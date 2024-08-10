.class public Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;
.super Ljava/lang/Object;
.source "MVDroneComposerEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$b;,
        Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;
    }
.end annotation


# static fields
.field private static D:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine; = null

.field public static DISSOLVE_EFFECT_DURATION:I = 0x0

.field public static final ENGINE_THREAD:Ljava/lang/String; = "engine.thread"

.field public static final ERROR_ANALYSIS_CANCELLED:I = 0x6b

.field public static final ERROR_INVALID_FLIGHT_DATA:I = 0x69

.field public static final ERROR_INVALID_HIGHLIGHT:I = 0x68

.field public static final ERROR_INVALID_MUSIC:I = 0x65

.field public static final ERROR_INVALID_STYLE_INDEX:I = 0x66

.field public static final ERROR_INVALID_TARGET_DURATION:I = 0x67

.field public static final ERROR_INVALID_THEME_INDEX:I = 0x6c

.field public static final ERROR_INVALID_VIDEO:I = 0x64

.field public static final ERROR_NOT_ENOUGH_SEGMENTS_FOR_TARGET_DURATION:I = 0x6a

.field public static final ERROR_TARGET_DURATION_LONGER_THAN_SOURCE_DURATION:I = 0x6e

.field public static final ERROR_UNSUPPORTED_DRONE_TYPE:I = 0x6d

.field private static G:I = 0x0

.field public static SCOPE_ENABLE_FADE_IN_EFFECT_WHEN_START:Z = false

.field public static SCOPE_ENABLE_FADE_OUT_EFFECT_WHEN_CLOSE:Z = false

.field public static SCOPE_ENABLE_MAKE_THUMB_FOR_EXPORTED_VIDEO:Z = false

.field public static final STATUS_CANCEL:I = -0x6

.field public static final STATUS_ERROR:I = -0x4

.field public static final STATUS_PRE_EXECUTE:I = -0x1

.field public static final STATUS_PRE_PREVIEW:I = -0x2

.field public static final STATUS_PROGRESSING:I = -0x5

.field public static final STATUS_SUCCESS:I = -0x3

.field public static VIDEO_FADE_IN_DURATION:I = 0x0

.field public static VIDEO_FADE_OUT_DURATION:I = 0x0

.field private static W:Lcom/muvee/mvdronecomposer/VideoItem; = null

.field public static final WARNING_HIGHLIGHTS_DROPPED:I = 0xc9

.field private static Z:Ljava/lang/String;

.field public static bgWatermarkHeight:I

.field public static bgWatermarkWidth:I

.field public static currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

.field public static currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

.field public static drawblePointX:[D

.field public static drawblePointY:[D

.field public static endIndex:I

.field public static isMadeResource:[Ljava/lang/Boolean;

.field private static o:Ljava/lang/String;

.field private static p:I

.field public static pointXYindex:I

.field private static r:I

.field private static s:I

.field public static startIndex:I

.field public static styleNameArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static targetDuration:J

.field public static themeNameArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static watermarkPosX:I

.field public static watermarkPosY:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:F

.field private C:[F

.field private E:Ljava/lang/Runnable;

.field private F:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

.field private H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

.field private I:Z

.field private J:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

.field private K:Lcom/muvee/mvflightanalyser/MVFlightAnalyser;

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;",
            ">;"
        }
    .end annotation
.end field

.field private M:Z

.field private N:Z

.field private O:I

.field private P:Z

.field private Q:J

.field private R:I

.field private S:I

.field private T:I

.field private U:J

.field private V:Lcom/muvee/mvdronecomposer/MusicItem;

.field private X:Landroid/content/SharedPreferences;

.field private Y:I

.field a:Ljava/lang/String;

.field protected b:Ljava/lang/Runnable;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:I

.field h:I

.field public highlights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvdronecomposer/HighlightSegment;",
            ">;"
        }
    .end annotation
.end field

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field public previewParam:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

.field private q:Ljava/lang/Runnable;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 83
    const-class v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    .line 85
    sput-boolean v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_IN_EFFECT_WHEN_START:Z

    .line 86
    sput-boolean v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_FADE_OUT_EFFECT_WHEN_CLOSE:Z

    .line 87
    sput-boolean v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->SCOPE_ENABLE_MAKE_THUMB_FOR_EXPORTED_VIDEO:Z

    .line 90
    const/16 v0, 0x32

    sput v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->p:I

    .line 119
    const/16 v0, 0x7d0

    sput v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_IN_DURATION:I

    .line 120
    const/16 v0, 0x7d0

    sput v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_OUT_DURATION:I

    .line 121
    const/16 v0, 0x1f4

    sput v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->DISSOLVE_EFFECT_DURATION:I

    .line 137
    const/16 v0, 0x212

    sput v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkWidth:I

    .line 138
    const/16 v0, 0x53

    sput v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkHeight:I

    .line 139
    sget v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkWidth:I

    div-int/lit8 v0, v0, 0x2

    rsub-int v0, v0, 0x780

    sput v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosX:I

    .line 140
    sget v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkHeight:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosY:I

    .line 141
    const/16 v0, 0x10

    sput v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->r:I

    .line 142
    sput v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->s:I

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Story"

    aput-object v2, v1, v4

    const-string v2, "Cinematic"

    aput-object v2, v1, v3

    const-string v2, "Trailer"

    aput-object v2, v1, v5

    .line 162
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->styleNameArray:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "Simple"

    aput-object v2, v1, v4

    const-string v2, "Quadrant"

    aput-object v2, v1, v3

    const-string v2, "Cardwipe"

    aput-object v2, v1, v5

    const-string v2, "Lowerthird"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string v3, "Blinds"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Diagonal"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "RedRibbon"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Wipeout"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "Travelogue"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Ellipse"

    aput-object v3, v1, v2

    .line 165
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    .line 167
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Boolean;

    sput-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->isMadeResource:[Ljava/lang/Boolean;

    .line 220
    const/4 v0, 0x0

    sput-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->D:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    .line 2120
    new-instance v0, Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-direct {v0}, Lcom/muvee/mvdronecomposer/VideoItem;-><init>()V

    sput-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    .line 2887
    const-string v0, "mmap_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2888
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x780

    const/16 v4, 0x438

    const/16 v3, 0x18

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "export_file_count"

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a:Ljava/lang/String;

    .line 123
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->f:I

    .line 124
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->g:I

    .line 126
    iput v5, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h:I

    .line 127
    iput v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->i:I

    .line 128
    iput v3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->j:I

    .line 130
    iput v5, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->k:I

    .line 131
    iput v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->l:I

    .line 132
    const v0, 0x1312d00

    iput v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->m:I

    .line 133
    iput v3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->n:I

    .line 144
    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->t:Z

    .line 147
    iput-boolean v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->u:Z

    .line 148
    iput-boolean v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->v:Z

    .line 149
    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->w:Z

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->x:Ljava/util/ArrayList;

    .line 154
    const-string v0, "cet_none"

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->y:Ljava/lang/String;

    .line 155
    const-string v0, "cet_fast_to_slow_motion"

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->z:Ljava/lang/String;

    .line 156
    const-string v0, "cet_plain_hyper_jump_cuts"

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->A:Ljava/lang/String;

    .line 1155
    iput-boolean v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->I:Z

    .line 2091
    new-instance v0, Lcom/muvee/mvdronecomposer/MusicItem;

    invoke-direct {v0}, Lcom/muvee/mvdronecomposer/MusicItem;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    .line 230
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::MVDroneComposerEngine::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;-><init>()V

    .line 232
    invoke-virtual {p0, v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->setPreviewParam(Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)V

    .line 233
    return-void
.end method

.method private a(Ljava/lang/String;F)F
    .locals 3

    .prologue
    const/high16 v2, 0x40800000    # 4.0f

    .line 2953
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2954
    mul-float/2addr p2, v2

    .line 2958
    :cond_0
    :goto_0
    return p2

    .line 2955
    :cond_1
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2956
    div-float v0, p2, v2

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    div-float v1, p2, v2

    const/high16 v2, 0x41900000    # 18.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float/2addr v1, v2

    add-float p2, v0, v1

    goto :goto_0
.end method

.method private a(FII)I
    .locals 3

    .prologue
    .line 200
    add-int/lit8 v0, p2, 0x1

    if-gt p3, v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return p2

    .line 203
    :cond_1
    sub-int v0, p3, p2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    .line 204
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->d()[F

    move-result-object v1

    aget v1, v1, v0

    .line 206
    cmpl-float v2, v1, p1

    if-eqz v2, :cond_0

    .line 209
    cmpl-float v1, v1, p1

    if-lez v1, :cond_2

    invoke-direct {p0, p1, p2, v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(FII)I

    move-result v0

    :goto_1
    move p2, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v0, p3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(FII)I

    move-result v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;I)I
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->R:I

    return p1
.end method

.method private a(Ljava/util/ArrayList;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/16 v6, 0x67

    const/16 v7, 0x64

    const-wide/16 v4, 0x0

    .line 2675
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "checkSourceDuration: ++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2678
    :cond_0
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::checkSourceDuration:: dataFilePathArray null or <= 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2713
    :goto_0
    return v0

    .line 2682
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    move-wide v2, v4

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 2684
    :try_start_0
    sget-object v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkSourceDuration: path: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    new-instance v8, Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2686
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2687
    :cond_2
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::checkSourceDuration:: file null or not exists"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2688
    goto :goto_0

    .line 2690
    :cond_3
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2691
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 2692
    const/16 v8, 0x9

    invoke-virtual {v0, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 2693
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v0, v8

    float-to-double v8, v0

    .line 2694
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkSourceDuration: videoDuration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " sec"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2695
    cmpg-double v0, v8, v4

    if-gez v0, :cond_4

    move v0, v6

    .line 2696
    goto/16 :goto_0

    .line 2698
    :cond_4
    add-double/2addr v2, v8

    .line 2682
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 2700
    :catch_0
    move-exception v0

    .line 2701
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2702
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::checkSourceDuration:: exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 2703
    goto/16 :goto_0

    .line 2707
    :cond_5
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSourceDuration: totalVideoDuration: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", targetDuration: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    int-to-double v0, p2

    cmpg-double v0, v2, v0

    if-gez v0, :cond_6

    .line 2709
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "checkSourceDuration: target duration is longer than source duration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    const/16 v0, 0x6e

    goto/16 :goto_0

    .line 2713
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;J)J
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->Q:J

    return-wide p1
.end method

.method static synthetic a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->F:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    return-object v0
.end method

.method static synthetic a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1682
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1685
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->z:Ljava/lang/String;

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Ljava/lang/String;F)F

    move-result v2

    .line 1686
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->A:Ljava/lang/String;

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Ljava/lang/String;F)F

    move-result v3

    .line 1688
    iget-object v0, p1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->timingsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 1690
    new-instance v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-direct {v5}, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;-><init>()V

    .line 1691
    iget-object v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    iput-object v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    .line 1692
    iget-object v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    iput-object v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    .line 1693
    iget-boolean v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isTakeOff:Z

    iput-boolean v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isTakeOff:Z

    .line 1694
    iget-boolean v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isLanding:Z

    iput-boolean v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isLanding:Z

    .line 1695
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    iput-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 1696
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iput-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 1697
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->timestamp:D

    iput-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->timestamp:D

    .line 1701
    iget-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v6, v8

    float-to-double v8, v3

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_0

    .line 1702
    iget-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v6, v8

    float-to-double v8, v3

    sub-double/2addr v6, v8

    .line 1703
    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v6, v10

    add-double/2addr v8, v10

    iput-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 1704
    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    sub-double v6, v8, v6

    iput-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 1707
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->A:Ljava/lang/String;

    iput-object v0, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    .line 1708
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1713
    :cond_0
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->N:Z

    if-eqz v0, :cond_1

    iget-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v6, v8

    float-to-double v8, v2

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_1

    .line 1714
    iget-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v6, v8

    float-to-double v8, v2

    sub-double/2addr v6, v8

    .line 1715
    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v6, v10

    add-double/2addr v8, v10

    iput-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 1716
    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    sub-double v6, v8, v6

    iput-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 1719
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->z:Ljava/lang/String;

    iput-object v0, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    .line 1720
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1725
    :cond_1
    const/4 v0, 0x0

    .line 1726
    iget-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v6, v8

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v8

    float-to-double v8, v8

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 1727
    const/4 v0, 0x1

    .line 1729
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1730
    iget-object v7, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1731
    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 1732
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 1735
    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v10, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v8, v10

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v10

    float-to-double v10, v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    .line 1736
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v8

    float-to-double v8, v8

    iget-wide v10, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v12, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v10, v12

    sub-double/2addr v8, v10

    .line 1739
    iget-wide v10, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v8, v12

    sub-double/2addr v10, v12

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_4

    .line 1741
    iget-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 1742
    const-wide/16 v10, 0x0

    iput-wide v10, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 1743
    iget-wide v10, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    sub-double v6, v8, v6

    add-double/2addr v6, v10

    iput-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 1758
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 1759
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDuration()I

    move-result v0

    const/16 v6, 0x1e

    if-ge v0, v6, :cond_6

    .line 1761
    iget-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v6, v8

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v0

    float-to-double v8, v0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_3

    .line 1763
    iget-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v6, v8

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v0

    float-to-double v8, v0

    sub-double/2addr v6, v8

    .line 1764
    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v6, v10

    add-double/2addr v8, v10

    iput-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 1765
    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    sub-double v6, v8, v6

    iput-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 1785
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->y:Ljava/lang/String;

    iput-object v0, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    .line 1786
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1744
    :cond_4
    iget-wide v10, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v8, v12

    add-double/2addr v10, v12

    long-to-double v12, v6

    cmpl-double v10, v10, v12

    if-lez v10, :cond_5

    .line 1746
    long-to-double v10, v6

    iget-wide v12, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    sub-double/2addr v10, v12

    .line 1747
    long-to-double v6, v6

    iput-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 1748
    iget-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v8, v10

    sub-double/2addr v6, v8

    iput-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    goto :goto_1

    .line 1751
    :cond_5
    iget-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v8, v10

    sub-double/2addr v6, v10

    iput-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 1752
    iget-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    goto :goto_1

    .line 1769
    :cond_6
    iget-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v6, v8

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v0

    float-to-double v8, v0

    div-double/2addr v6, v8

    double-to-int v0, v6

    .line 1772
    const/4 v6, 0x3

    if-lt v0, v6, :cond_7

    .line 1773
    iget-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v6, v8

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v0, v8

    float-to-double v8, v0

    sub-double/2addr v6, v8

    .line 1774
    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v6, v10

    add-double/2addr v8, v10

    iput-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 1775
    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    sub-double v6, v8, v6

    iput-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    goto :goto_2

    .line 1776
    :cond_7
    if-lez v0, :cond_3

    const/4 v6, 0x3

    if-ge v0, v6, :cond_3

    .line 1777
    iget-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v6, v8

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v8

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-double v8, v0

    sub-double/2addr v6, v8

    .line 1778
    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v6, v10

    add-double/2addr v8, v10

    iput-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 1779
    iget-wide v8, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    sub-double v6, v8, v6

    iput-wide v6, v5, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    goto/16 :goto_2

    .line 1789
    :cond_8
    return-object v1
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1795
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1796
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1798
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 1801
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1802
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 1804
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1807
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1811
    :cond_0
    return-object v2
.end method

.method private a(F)V
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->B:F

    .line 188
    return-void
.end method

.method private a(ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 7

    .prologue
    .line 803
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/sdk/Engine;->setSupportFastMotion(Z)V

    .line 805
    monitor-enter p0

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->isNeedToInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    :cond_0
    :try_start_1
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;->a:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    invoke-direct {p0, v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 819
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/muvee/dsg/sdk/Engine;->setMmsaGLSurfaceView(Lcom/muvee/studio/view/MmsaGLSurfaceView;)V

    .line 820
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/sdk/Engine;->setPreview(Z)V

    .line 822
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::startPrview:: Preview Param height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->previewParam:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->previewParam:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->previewParam:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setPreviewParam(Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)V

    .line 825
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 826
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::startPrview:: E_MVVE_TIMELINE_AUTO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->E_MVVE_TIMELINE_AUTO:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->buildTimeline(Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;)V

    .line 833
    :goto_1
    const v0, 0xac44

    const/16 v1, 0xc

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 835
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const v2, 0xac44

    const/16 v3, 0xc

    const/4 v4, 0x2

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 838
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 840
    invoke-virtual {p2}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_3

    .line 841
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::startPrview:: getSurface().isValid() == false !!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    monitor-exit p0

    .line 889
    :goto_2
    return-void

    .line 811
    :cond_1
    monitor-exit p0

    goto :goto_2

    .line 888
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 829
    :cond_2
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::startPrview:: E_MVVE_TIMELINE_MANUAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->E_MVVE_TIMELINE_MANUAL:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->buildTimeline(Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;)V

    goto :goto_1

    .line 844
    :cond_3
    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    new-instance v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$3;

    invoke-direct {v2, p0, p2, p3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$3;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Lcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    new-instance v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$4;

    invoke-direct {v3, p0, v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$4;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Landroid/media/AudioTrack;)V

    invoke-virtual {v1, p1, v2, p3, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->playWithAudio(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;)V

    .line 882
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 883
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    if-eqz v0, :cond_4

    .line 884
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->close()V

    .line 888
    :goto_3
    monitor-exit p0

    goto :goto_2

    .line 886
    :cond_4
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::startPrview:: videoEditor is null, need not to close."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method private a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;)V
    .locals 10

    .prologue
    .line 421
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    if-eqz v0, :cond_5

    .line 422
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->isNeedToInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->init()V

    .line 430
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 431
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 433
    iget-object v1, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    iget-object v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->A:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 434
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 436
    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 438
    iget-object v1, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    iget-object v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->A:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v4, v6

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v1

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v1, v6

    float-to-double v6, v1

    sub-double/2addr v4, v6

    .line 441
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v8, v4, v8

    add-double/2addr v6, v8

    iput-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 442
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v8

    sub-double v4, v6, v4

    iput-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 443
    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->y:Ljava/lang/String;

    iput-object v1, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    .line 444
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    .line 451
    new-instance v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-direct {v4}, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;-><init>()V

    .line 452
    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    iput-object v5, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    .line 453
    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    iput-object v5, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    .line 454
    iget-boolean v5, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isTakeOff:Z

    iput-boolean v5, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isTakeOff:Z

    .line 455
    iget-boolean v5, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isLanding:Z

    iput-boolean v5, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isLanding:Z

    .line 456
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    int-to-float v5, v1

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v8

    mul-float/2addr v5, v8

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v5, v8

    float-to-double v8, v5

    add-double/2addr v6, v8

    int-to-float v5, v1

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v8

    mul-float/2addr v5, v8

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v5, v8

    const/high16 v8, 0x41900000    # 18.0f

    mul-float/2addr v5, v8

    float-to-double v8, v5

    add-double/2addr v6, v8

    iput-wide v6, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 457
    iget-wide v6, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v5

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v5, v8

    float-to-double v8, v5

    add-double/2addr v6, v8

    iput-wide v6, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 458
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->timestamp:D

    int-to-float v5, v1

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v8

    mul-float/2addr v5, v8

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v5, v8

    float-to-double v8, v5

    add-double/2addr v6, v8

    int-to-float v5, v1

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v8

    mul-float/2addr v5, v8

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v5, v8

    const/high16 v8, 0x41900000    # 18.0f

    mul-float/2addr v5, v8

    float-to-double v8, v5

    add-double/2addr v6, v8

    iput-wide v6, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->timestamp:D

    .line 459
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 462
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 472
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;

    .line 473
    invoke-direct {p0, v0, v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;Ljava/util/ArrayList;)V

    .line 474
    invoke-direct {p0, v0, v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;Ljava/util/ArrayList;)V

    .line 475
    invoke-direct {p0, v0, v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;Ljava/util/ArrayList;)V

    .line 476
    invoke-direct {p0, v0, v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->d([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;Ljava/util/ArrayList;)V

    .line 478
    invoke-direct {p0, v0, v2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->e([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;Ljava/util/ArrayList;)V

    .line 479
    invoke-virtual {p0, v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->setTargetDurationMs([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V

    .line 481
    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setMedia([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V

    .line 484
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 485
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/Theme;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/Theme;-><init>()V

    .line 486
    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/Theme;->themeFilename:Ljava/lang/String;

    .line 487
    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/Theme;->themeDirectoryPath:Ljava/lang/String;

    .line 488
    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/Theme;->creditsDirectoryPath:Ljava/lang/String;

    .line 489
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::prepareAndSetMedia:: > setTheme, themeFileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setTheme(Lcom/muvee/dsg/mmap/api/videoeditor/Theme;)V

    .line 495
    :goto_2
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Quadrant"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 496
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::prepareAndSetMedia:: > setVideoEffects, quadrant"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v2

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v4}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/muvee/mvdronecomposer/theme/quadrant;->getEffectDescriptions(Lcom/muvee/mvdronecomposer/SettingsParam;JJ)[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V

    .line 533
    :cond_5
    :goto_3
    return-void

    .line 492
    :cond_6
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setTheme(Lcom/muvee/dsg/mmap/api/videoeditor/Theme;)V

    goto :goto_2

    .line 498
    :cond_7
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Diagonal"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 499
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::prepareAndSetMedia:: > setVideoEffects, Diagonal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v2

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v4}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/muvee/mvdronecomposer/theme/diagonal;->getEffectDescriptions(Lcom/muvee/mvdronecomposer/SettingsParam;JJ)[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V

    goto :goto_3

    .line 501
    :cond_8
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Lowerthird"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 502
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::prepareAndSetMedia:: > setVideoEffects, Lowerthird"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v2

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v4}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/muvee/mvdronecomposer/theme/lowerthird;->getEffectDescriptions(Lcom/muvee/mvdronecomposer/SettingsParam;JJ)[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V

    goto :goto_3

    .line 504
    :cond_9
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Cardwipe"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 505
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::prepareAndSetMedia:: > setVideoEffects, Cardwipe"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v2

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v4}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/muvee/mvdronecomposer/theme/cardwipe;->getEffectDescriptions(Lcom/muvee/mvdronecomposer/SettingsParam;JJ)[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V

    goto/16 :goto_3

    .line 507
    :cond_a
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Blinds"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 508
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::prepareAndSetMedia:: > setVideoEffects, Blinds"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v2

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v4}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/muvee/mvdronecomposer/theme/blinds;->getEffectDescriptions(Lcom/muvee/mvdronecomposer/SettingsParam;JJ)[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V

    goto/16 :goto_3

    .line 510
    :cond_b
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Simple"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 511
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::prepareAndSetMedia:: > setVideoEffects, Simple"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v2

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v4}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/muvee/mvdronecomposer/theme/simple;->getEffectDescriptions(Lcom/muvee/mvdronecomposer/SettingsParam;JJ)[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V

    goto/16 :goto_3

    .line 513
    :cond_c
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Ellipse"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 514
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::prepareAndSetMedia:: > setVideoEffects, Ellipse"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v2

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v4}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/muvee/mvdronecomposer/theme/ellipse;->getEffectDescriptions(Lcom/muvee/mvdronecomposer/SettingsParam;JJ)[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V

    goto/16 :goto_3

    .line 516
    :cond_d
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Wipeout"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 517
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::prepareAndSetMedia:: > setVideoEffects, Wipeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v2

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v4}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/muvee/mvdronecomposer/theme/wipeout;->getEffectDescriptions(Lcom/muvee/mvdronecomposer/SettingsParam;JJ)[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V

    goto/16 :goto_3

    .line 519
    :cond_e
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Travelogue"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 520
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::prepareAndSetMedia:: > setVideoEffects, Travelogue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v2

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v4}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/muvee/mvdronecomposer/theme/travelogue;->getEffectDescriptions(Lcom/muvee/mvdronecomposer/SettingsParam;JJ)[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V

    goto/16 :goto_3

    .line 522
    :cond_f
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "RedRibbon"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 523
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::prepareAndSetMedia:: > setVideoEffects, RedRibbon"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v2

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v4}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/muvee/mvdronecomposer/theme/redribbon;->getEffectDescriptions(Lcom/muvee/mvdronecomposer/SettingsParam;JJ)[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V

    goto/16 :goto_3

    .line 526
    :cond_10
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::prepareAndSetMedia:: setVideoEffects > isDisableWatermark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v2}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableWatermark()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableWatermark()Z

    move-result v0

    if-nez v0, :cond_11

    .line 528
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h()[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V

    goto/16 :goto_3

    .line 530
    :cond_11
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;F)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    return-void
.end method

.method static synthetic a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;[F)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a([F)V

    return-void
.end method

.method private a([F)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->C:[F

    .line 196
    return-void
.end method

.method private a([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;IIIII)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2242
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::prepareAddSpeedEffect:: mediaDescriptorIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", effectIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", speed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    aget-object v0, p1, p2

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    invoke-direct {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;-><init>()V

    aput-object v1, v0, p3

    .line 2246
    aget-object v0, p1, p2

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    aget-object v0, v0, p3

    iput v3, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->disableAudio:I

    .line 2247
    aget-object v0, p1, p2

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    aget-object v0, v0, p3

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    invoke-direct {v1, p4, p5}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->effectInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 2248
    aget-object v0, p1, p2

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    aget-object v0, v0, p3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_MOTION_EX_UNIFORM:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    iput-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->motionEffectID:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    .line 2249
    aget-object v0, p1, p2

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    aget-object v0, v0, p3

    new-array v1, v4, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v2, v1, v3

    iput-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2250
    aget-object v0, p1, p2

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v0, v3

    iput v4, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2251
    aget-object v0, p1, p2

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v0, v3

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->EUniform_Speed:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2252
    aget-object v0, p1, p2

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v0, v3

    new-array v1, v4, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v2, v1, v3

    iput-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2253
    aget-object v0, p1, p2

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v0, v0, v3

    iput p6, v0, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2254
    return-void
.end method

.method private a([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 536
    const/4 v1, 0x0

    .line 538
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 539
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-wide v4, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    .line 540
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 541
    sub-int v6, v5, v4

    .line 543
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "::prepareAddVideo:: dataFilePath"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", clipStartTime: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", clipEndTime: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", clipDuration: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", type: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;-><init>()V

    aput-object v0, p1, v1

    .line 546
    aget-object v3, p1, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    iput-object v0, v3, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->mediaPath:Ljava/lang/String;

    .line 547
    aget-object v0, p1, v1

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;->MV_MVVE_MEDIA_VIDEO:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    iput-object v3, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->type:Lcom/muvee/dsg/mmap/api/videoeditor/MediaType;

    .line 549
    aget-object v0, p1, v1

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    invoke-direct {v3, v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v3, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 552
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    iget-object v3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->y:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    iget-object v3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->A:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 554
    :cond_0
    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    .line 555
    invoke-direct {p0, v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b(F)F

    move-result v3

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v7

    .line 557
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v7

    const/high16 v8, 0x40800000    # 4.0f

    div-float/2addr v7, v8

    add-float/2addr v0, v7

    invoke-direct {p0, v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b(F)F

    move-result v0

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v7

    .line 558
    sub-float v7, v3, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x358637bd    # 1.0E-6f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6

    .line 563
    :goto_1
    int-to-float v3, v5

    cmpl-float v3, v0, v3

    if-gez v3, :cond_1

    int-to-float v3, v5

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    int-to-float v3, v5

    sub-float/2addr v3, v0

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    cmpg-float v3, v3, v7

    if-gez v3, :cond_2

    .line 564
    :cond_1
    int-to-float v3, v4

    sub-float/2addr v0, v3

    .line 565
    int-to-float v3, v6

    div-float/2addr v3, v0

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v3, v7

    .line 567
    sget-object v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "::prepareAddVideo::adjust for downbeats::clipDuration::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "::newDuration::"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "::speed::"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    aget-object v6, p1, v1

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    .line 571
    aget-object v6, p1, v1

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v7, 0x0

    new-instance v8, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    invoke-direct {v8}, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;-><init>()V

    aput-object v8, v6, v7

    .line 572
    aget-object v6, p1, v1

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iput v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->disableAudio:I

    .line 573
    aget-object v6, p1, v1

    iget-object v6, v6, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    invoke-direct {v7, v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v7, v6, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->effectInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 574
    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_MOTION_EX_UNIFORM:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->motionEffectID:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    .line 575
    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v7, v5, v6

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 576
    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 577
    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->EUniform_Speed:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->ordinal()I

    move-result v5

    iput v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 578
    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v6, 0x0

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v5, v6

    iput-object v5, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 579
    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    float-to-int v3, v3

    iput v3, v4, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 581
    aget-object v3, p1, v1

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    int-to-float v5, v2

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {v4, v2, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 590
    :goto_2
    aget-object v0, p1, v1

    const/4 v2, 0x0

    iput v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->volumeLevel:I

    .line 592
    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v2, v0, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    .line 594
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::prepareAddVideo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -  ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->startTimeMSec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 583
    :cond_2
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v3, "::prepareAddVideo::adjust for downbeats::not needed"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    aget-object v0, p1, v1

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    add-int v4, v2, v6

    invoke-direct {v3, v2, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v3, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    goto :goto_2

    .line 587
    :cond_3
    aget-object v0, p1, v1

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    int-to-float v4, v2

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v2, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v3, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    goto :goto_2

    .line 597
    :cond_4
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableCredit()Z

    move-result v0

    if-nez v0, :cond_5

    .line 598
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    const/16 v1, 0x64

    iput v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->volumeLevel:I

    .line 602
    :goto_3
    return-void

    .line 600
    :cond_5
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string/jumbo v1, "prepareAddVideo: credit disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move v0, v3

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->I:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 2316
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/MVDroneComposer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2318
    const/4 v0, 0x1

    .line 2320
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(F)F
    .locals 2

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->d()[F

    move-result-object v1

    array-length v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(FII)I

    move-result v0

    .line 214
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->d()[F

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->d()[F

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->d()[F

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->d()[F

    move-result-object v1

    aget v0, v1, v0

    return v0
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->p:I

    return v0
.end method

.method static synthetic b(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;I)I
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->O:I

    return p1
.end method

.method static synthetic b(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;J)J
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->U:J

    return-wide p1
.end method

.method static synthetic b(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->J:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    return-object v0
.end method

.method private b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1829
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1830
    const/4 v0, 0x0

    .line 1832
    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->highlights:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1833
    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->highlights:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvdronecomposer/HighlightSegment;

    .line 1834
    new-instance v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-direct {v3}, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;-><init>()V

    .line 1835
    iget-object v4, v0, Lcom/muvee/mvdronecomposer/HighlightSegment;->videoFilePath:Ljava/lang/String;

    iput-object v4, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    .line 1836
    iget-object v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->y:Ljava/lang/String;

    iput-object v4, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    .line 1837
    iget-wide v6, v0, Lcom/muvee/mvdronecomposer/HighlightSegment;->startTime:D

    iput-wide v6, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 1838
    iget-wide v6, v0, Lcom/muvee/mvdronecomposer/HighlightSegment;->endTime:D

    iput-wide v6, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 1839
    iget-object v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->K:Lcom/muvee/mvflightanalyser/MVFlightAnalyser;

    iget-object v6, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->getTimestampFromEpochForFileAtPath(Ljava/lang/String;)D

    move-result-wide v6

    iget-wide v8, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    add-double/2addr v6, v8

    iput-wide v6, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->timestamp:D

    .line 1840
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isTakeOff:Z

    .line 1841
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isLanding:Z

    .line 1844
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1845
    iget-object v0, v0, Lcom/muvee/mvdronecomposer/HighlightSegment;->videoFilePath:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 1846
    const/16 v0, 0x9

    invoke-virtual {v4, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 1847
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 1850
    iget-wide v8, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v10, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v8, v10

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v0

    float-to-double v10, v0

    cmpg-double v0, v8, v10

    if-gez v0, :cond_27

    .line 1851
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v0

    float-to-double v8, v0

    iget-wide v10, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v12, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v10, v12

    sub-double/2addr v8, v10

    .line 1854
    iget-wide v10, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v8, v12

    sub-double/2addr v10, v12

    const-wide/16 v12, 0x0

    cmpg-double v0, v10, v12

    if-gez v0, :cond_0

    .line 1856
    iget-wide v6, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 1857
    const-wide/16 v10, 0x0

    iput-wide v10, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 1858
    iget-wide v10, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v12

    sub-double v6, v8, v6

    add-double/2addr v6, v10

    iput-wide v6, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 1870
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .line 1873
    :goto_2
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 1874
    goto/16 :goto_0

    .line 1859
    :cond_0
    iget-wide v10, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    add-double/2addr v10, v8

    long-to-double v12, v6

    cmpl-double v0, v10, v12

    if-lez v0, :cond_1

    .line 1861
    long-to-double v10, v6

    iget-wide v12, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    sub-double/2addr v10, v12

    .line 1862
    long-to-double v6, v6

    iput-wide v6, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 1863
    iget-wide v6, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v8, v10

    sub-double/2addr v6, v8

    iput-wide v6, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    goto :goto_1

    .line 1866
    :cond_1
    iget-wide v6, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v8, v10

    sub-double/2addr v6, v10

    iput-wide v6, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 1867
    iget-wide v6, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    iput-wide v6, v3, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    goto :goto_1

    .line 1881
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1883
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1884
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 1885
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 1886
    iget-object v4, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    iget-object v7, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1888
    iget-wide v8, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    iget-wide v10, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    cmpg-double v4, v8, v10

    if-gez v4, :cond_5

    iget-wide v8, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    iget-wide v10, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    cmpl-double v4, v8, v10

    if-ltz v4, :cond_5

    iget-wide v8, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v10, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    cmpg-double v4, v8, v10

    if-gtz v4, :cond_5

    .line 1889
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1894
    :cond_5
    iget-wide v8, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    iget-wide v10, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    cmpg-double v4, v8, v10

    if-gez v4, :cond_6

    iget-wide v8, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    iget-wide v10, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    cmpl-double v4, v8, v10

    if-ltz v4, :cond_6

    iget-wide v8, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v10, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    cmpl-double v4, v8, v10

    if-lez v4, :cond_6

    .line 1895
    iget-wide v8, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iput-wide v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 1896
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1901
    :cond_6
    iget-wide v8, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v10, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    cmpl-double v4, v8, v10

    if-lez v4, :cond_7

    iget-wide v8, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    iget-wide v10, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    cmpg-double v4, v8, v10

    if-gez v4, :cond_7

    iget-wide v8, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v10, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    cmpg-double v4, v8, v10

    if-gtz v4, :cond_7

    .line 1902
    iget-wide v8, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    iput-wide v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 1903
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1908
    :cond_7
    iget-wide v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    iget-wide v10, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    cmpl-double v4, v8, v10

    if-ltz v4, :cond_4

    iget-wide v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v10, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    cmpg-double v4, v8, v10

    if-gtz v4, :cond_4

    .line 1909
    iget-wide v8, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    iput-wide v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 1910
    iget-wide v8, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iput-wide v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 1911
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1920
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1923
    const-wide/16 v2, 0x0

    .line 1924
    const/4 v0, 0x0

    .line 1926
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 1927
    sget-object v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v7}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDuration()I

    move-result v7

    int-to-double v8, v7

    sub-double/2addr v8, v2

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    float-to-double v10, v7

    cmpl-double v7, v8, v10

    if-lez v7, :cond_9

    .line 1928
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1929
    iget-wide v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v10, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v8, v10

    add-double/2addr v2, v8

    .line 1930
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 1934
    goto :goto_4

    .line 1937
    :cond_9
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->highlights:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->highlights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_a

    .line 1938
    const/16 v0, 0xc9

    iput v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->S:I

    .line 1939
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->highlights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->T:I

    .line 1943
    :cond_a
    if-eqz p1, :cond_16

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 1944
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDuration()I

    move-result v0

    int-to-double v0, v0

    sub-double/2addr v0, v2

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    float-to-double v8, v5

    cmpl-double v0, v0, v8

    if-lez v0, :cond_16

    .line 1945
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1947
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 1948
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1949
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1954
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1955
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1957
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 1958
    iget-boolean v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isTakeOff:Z

    if-eqz v8, :cond_f

    .line 1959
    sget-object v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v8}, Lcom/muvee/mvdronecomposer/SettingsParam;->isAllowTakeOff()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1960
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1962
    :cond_e
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1967
    :cond_f
    iget-boolean v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isLanding:Z

    if-eqz v8, :cond_d

    .line 1968
    sget-object v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v8}, Lcom/muvee/mvdronecomposer/SettingsParam;->isAllowLanding()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1969
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1971
    :cond_10
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1977
    :cond_11
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 1978
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1981
    :cond_12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 1982
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 1983
    sget-object v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v6}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDuration()I

    move-result v6

    int-to-double v6, v6

    sub-double/2addr v6, v2

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_13

    .line 1984
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1985
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1986
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v6, v8

    add-double/2addr v2, v6

    goto :goto_8

    .line 1996
    :cond_14
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1997
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 1998
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 2000
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDuration()I

    move-result v1

    int-to-double v6, v1

    sub-double/2addr v6, v2

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    float-to-double v8, v1

    cmpl-double v1, v6, v8

    if-lez v1, :cond_16

    .line 2001
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2002
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2004
    iget-object v1, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    iget-object v6, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->z:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2005
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v2

    :goto_9
    move-wide v2, v0

    .line 1992
    :cond_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 2018
    :cond_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 2019
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDuration()I

    move-result v0

    int-to-double v0, v0

    sub-double v2, v0, v2

    .line 2024
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 2025
    iget-object v1, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    iget-object v5, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->y:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    float-to-double v8, v1

    cmpg-double v1, v6, v8

    if-gtz v1, :cond_17

    .line 2026
    const-wide/16 v6, 0x0

    cmpl-double v1, v2, v6

    if-lez v1, :cond_1c

    .line 2028
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2029
    iget-object v5, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 2030
    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 2031
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 2034
    iget-wide v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v2, v10

    sub-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpg-double v1, v8, v10

    if-gez v1, :cond_1a

    .line 2036
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 2037
    const-wide/16 v8, 0x0

    iput-wide v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 2038
    iget-wide v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    sub-double/2addr v2, v6

    add-double/2addr v2, v8

    iput-wide v2, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 2064
    :cond_17
    :goto_a
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->M:Z

    if-eqz v0, :cond_24

    .line 2066
    const/4 v2, 0x0

    .line 2067
    const/4 v1, 0x0

    .line 2069
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 2070
    iget-boolean v5, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isTakeOff:Z

    if-eqz v5, :cond_1e

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_c
    move-object v2, v1

    move-object v1, v0

    .line 2072
    goto :goto_b

    .line 2006
    :cond_18
    iget-object v1, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    iget-object v6, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->A:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2007
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v2

    goto/16 :goto_9

    .line 2009
    :cond_19
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double v0, v6, v0

    add-double/2addr v0, v2

    goto/16 :goto_9

    .line 2039
    :cond_1a
    iget-wide v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v10, v2, v10

    add-double/2addr v8, v10

    long-to-double v10, v6

    cmpl-double v1, v8, v10

    if-lez v1, :cond_1b

    .line 2041
    long-to-double v8, v6

    iget-wide v10, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    sub-double/2addr v8, v10

    .line 2042
    long-to-double v6, v6

    iput-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 2043
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v2, v8

    sub-double v2, v6, v2

    iput-wide v2, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    goto :goto_a

    .line 2046
    :cond_1b
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v8, v2, v8

    sub-double/2addr v6, v8

    iput-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 2047
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v8

    add-double/2addr v2, v6

    iput-wide v2, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    goto :goto_a

    .line 2049
    :cond_1c
    const-wide/16 v6, 0x0

    cmpg-double v1, v2, v6

    if-gez v1, :cond_17

    .line 2050
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    iget-wide v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v6, v8

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v1

    float-to-double v8, v1

    cmpl-double v1, v6, v8

    if-lez v1, :cond_1d

    .line 2051
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    sub-double v2, v6, v2

    iput-wide v2, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    goto/16 :goto_a

    .line 2054
    :cond_1d
    iget-wide v2, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v2, v6

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v1

    float-to-double v6, v1

    cmpl-double v1, v2, v6

    if-lez v1, :cond_17

    .line 2056
    iget-wide v2, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v2, v6

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v1

    float-to-double v6, v1

    sub-double/2addr v2, v6

    .line 2057
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    sub-double v2, v6, v2

    iput-wide v2, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    goto/16 :goto_a

    .line 2071
    :cond_1e
    iget-boolean v5, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->isLanding:Z

    if-eqz v5, :cond_26

    move-object v1, v2

    goto/16 :goto_c

    .line 2074
    :cond_1f
    if-eqz v2, :cond_20

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2075
    :cond_20
    if-eqz v1, :cond_21

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2078
    :cond_21
    invoke-direct {p0, v4}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2081
    if-eqz v2, :cond_22

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2082
    :cond_22
    if-eqz v1, :cond_23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2088
    :cond_23
    :goto_d
    return-object v0

    .line 2084
    :cond_24
    new-instance v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$b;

    invoke-direct {v0, p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$b;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_25
    move-object v0, v4

    goto :goto_d

    :cond_26
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_c

    :cond_27
    move v0, v1

    goto/16 :goto_2
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 2857
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::makeResource: ++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    if-eqz v0, :cond_0

    .line 2859
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::makeResource: theme name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v3}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Diagonal"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2861
    invoke-static {p1}, Lcom/muvee/mvdronecomposer/theme/diagonal;->makeResource(Landroid/content/Context;)V

    .line 2884
    :cond_0
    :goto_0
    return-void

    .line 2862
    :cond_1
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Quadrant"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 2863
    invoke-static {p1}, Lcom/muvee/mvdronecomposer/theme/quadrant;->makeResource(Landroid/content/Context;)V

    goto :goto_0

    .line 2864
    :cond_2
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Lowerthird"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 2865
    invoke-static {p1}, Lcom/muvee/mvdronecomposer/theme/lowerthird;->makeResource(Landroid/content/Context;)V

    goto :goto_0

    .line 2866
    :cond_3
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Cardwipe"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 2867
    invoke-static {p1}, Lcom/muvee/mvdronecomposer/theme/cardwipe;->makeResource(Landroid/content/Context;)V

    goto :goto_0

    .line 2868
    :cond_4
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Blinds"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 2869
    invoke-static {p1}, Lcom/muvee/mvdronecomposer/theme/blinds;->makeResource(Landroid/content/Context;)V

    goto :goto_0

    .line 2870
    :cond_5
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Simple"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 2871
    invoke-static {p1}, Lcom/muvee/mvdronecomposer/theme/simple;->makeResource(Landroid/content/Context;)V

    goto :goto_0

    .line 2872
    :cond_6
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Ellipse"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 2873
    invoke-static {p1}, Lcom/muvee/mvdronecomposer/theme/ellipse;->makeResource(Landroid/content/Context;)V

    goto :goto_0

    .line 2874
    :cond_7
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Wipeout"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 2875
    invoke-static {p1}, Lcom/muvee/mvdronecomposer/theme/wipeout;->makeResource(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2876
    :cond_8
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "Travelogue"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 2877
    invoke-static {p1}, Lcom/muvee/mvdronecomposer/theme/travelogue;->makeResource(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2878
    :cond_9
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    const-string v2, "RedRibbon"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 2879
    invoke-static {p1}, Lcom/muvee/mvdronecomposer/theme/redribbon;->makeResource(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2881
    :cond_a
    invoke-static {p1}, Lcom/muvee/mvdronecomposer/theme/simple;->makeResource(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private b([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 606
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-wide v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v4

    double-to-int v4, v0

    .line 607
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-wide v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v6

    double-to-int v7, v0

    .line 608
    sub-int v1, v7, v4

    .line 610
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/SettingsParam;->getStyleIndex()I

    move-result v0

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->styleNameArray:Ljava/util/ArrayList;

    const-string v5, "Trailer"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 611
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    iget-object v3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::prepareAddSpeed:: clipStartTimeMs: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", clipEndTimeMs: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", clipDurationMs: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const v0, 0x3f4ccccd    # 0.8f

    int-to-float v3, v1

    mul-float/2addr v0, v3

    .line 615
    const v3, 0x3e4ccccd    # 0.2f

    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 616
    const v3, 0x3eb33333    # 0.35f

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v5

    mul-float/2addr v3, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v5

    .line 617
    const v5, 0x3f266666    # 0.65f

    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v6

    mul-float/2addr v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    .line 618
    int-to-float v6, v4

    add-float v8, v6, v0

    .line 620
    div-float v6, v0, v3

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v6, v9

    .line 621
    div-float v9, v1, v5

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    .line 623
    sget-object v10, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "prepareAddSpeed: mediaDescriptor["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "].edlInterval ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, p1, v2

    iget-object v12, v12, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v12, v12, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->startTimeMSec:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, p1, v2

    iget-object v12, v12, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v12, v12, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    sget-object v10, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "prepareAddSpeed: fastPartDurationMs: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", fastPartTargetDuration: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", fastPartSpeedValue: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "prepareAddSpeed: slowPartDurationMs: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", slowPartTargetDuration: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", slowPartSpeedValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    aget-object v0, p1, v2

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    iput-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    .line 628
    const/4 v3, 0x0

    float-to-int v5, v8

    float-to-int v6, v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;IIIII)V

    .line 629
    const/4 v3, 0x1

    float-to-int v4, v8

    float-to-int v6, v9

    move-object v0, p0

    move-object v1, p1

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;IIIII)V

    .line 605
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 632
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->P:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2656
    if-nez p1, :cond_1

    .line 2657
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v2, "::isInvalidMusic:: musicPath null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    :cond_0
    :goto_0
    return v0

    .line 2661
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2662
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2663
    :cond_2
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v2, "::isInvalidMusic:: file null or not exists"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 2664
    goto :goto_0

    .line 2666
    :catch_0
    move-exception v0

    .line 2667
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2668
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v2, "::isInvalidMusic:: exception"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2669
    goto :goto_0
.end method

.method private c()F
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->B:F

    return v0
.end method

.method private c([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 635
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    .line 636
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    .line 637
    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    invoke-virtual {v2}, Lcom/muvee/mvdronecomposer/MusicItem;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 638
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;-><init>()V

    aput-object v2, v0, v8

    .line 639
    aget-object v2, v0, v8

    iget-object v3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    invoke-virtual {v3}, Lcom/muvee/mvdronecomposer/MusicItem;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;->mediaPath:Ljava/lang/String;

    .line 641
    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    invoke-virtual {v2}, Lcom/muvee/mvdronecomposer/MusicItem;->getDurationMs()J

    move-result-wide v2

    long-to-int v2, v2

    if-le v1, v2, :cond_1

    .line 642
    aget-object v2, v0, v8

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget-object v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    invoke-virtual {v4}, Lcom/muvee/mvdronecomposer/MusicItem;->getStartTimeMs()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    invoke-virtual {v5}, Lcom/muvee/mvdronecomposer/MusicItem;->getDurationMs()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-direct {v3, v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;->setMediaInterval(Lcom/muvee/dsg/mmap/api/videoeditor/Interval;)Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    .line 643
    aget-object v2, v0, v8

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget-object v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    invoke-virtual {v4}, Lcom/muvee/mvdronecomposer/MusicItem;->getDurationMs()J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    invoke-virtual {v5}, Lcom/muvee/mvdronecomposer/MusicItem;->getStartTimeMs()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-direct {v3, v8, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;->setEdlInterval(Lcom/muvee/dsg/mmap/api/videoeditor/Interval;)Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    .line 649
    :goto_0
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v2}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableCredit()Z

    move-result v2

    if-nez v2, :cond_2

    .line 650
    aget-object v2, v0, v8

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    aget-object v3, v0, v8

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    int-to-long v4, v3

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v3}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    .line 651
    aget-object v2, v0, v8

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    aget-object v3, v0, v8

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    int-to-long v4, v3

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v3}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v3, v4

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    .line 656
    :goto_1
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::prepareAddMusic:: edlEndTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", (int) musicItem.getDurationMs(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    invoke-virtual {v3}, Lcom/muvee/mvdronecomposer/MusicItem;->getDurationMs()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    aget-object v1, v0, v8

    const/16 v2, 0x64

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;->volumeLevel:I

    .line 659
    aget-object v1, v0, v8

    iget v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->f:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;->fadeInDuration:I

    .line 660
    aget-object v1, v0, v8

    iget v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->g:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;->fadeOutDuration:I

    .line 663
    :cond_0
    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    invoke-virtual {v1}, Lcom/muvee/mvdronecomposer/MusicItem;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 664
    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v1, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setMusic([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V

    .line 668
    :goto_2
    return-void

    .line 645
    :cond_1
    aget-object v2, v0, v8

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget-object v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    invoke-virtual {v4}, Lcom/muvee/mvdronecomposer/MusicItem;->getStartTimeMs()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    invoke-virtual {v5}, Lcom/muvee/mvdronecomposer/MusicItem;->getStartTimeMs()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v1

    invoke-direct {v3, v4, v5}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;->setMediaInterval(Lcom/muvee/dsg/mmap/api/videoeditor/Interval;)Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    .line 646
    aget-object v2, v0, v8

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    invoke-direct {v3, v8, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;->setEdlInterval(Lcom/muvee/dsg/mmap/api/videoeditor/Interval;)Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;

    goto/16 :goto_0

    .line 653
    :cond_2
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string/jumbo v3, "prepareAddMusic: credit disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 666
    :cond_3
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setMusic([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->I:Z

    return v0
.end method

.method static synthetic c(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->u:Z

    return p1
.end method

.method private c(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2635
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 2636
    :cond_0
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::isInvalidVideo:: dataFilePathArray null or <= 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 2652
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v1, v2

    .line 2639
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2641
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2642
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2643
    :cond_3
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::isInvalidVideo:: file null or not exists"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 2644
    goto :goto_0

    .line 2646
    :catch_0
    move-exception v0

    .line 2647
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2648
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::isInvalidVideo:: exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 2649
    goto :goto_0

    .line 2639
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2607
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2608
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2610
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2611
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 2618
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2619
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 2620
    const-wide/16 v2, 0x0

    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2625
    if-eqz v1, :cond_2

    .line 2626
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 2628
    :cond_2
    if-eqz v0, :cond_3

    .line 2629
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 2632
    :cond_3
    :goto_0
    return-void

    .line 2621
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 2622
    :goto_1
    :try_start_3
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v4, "::copyFile: copy fail!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2625
    if-eqz v2, :cond_4

    .line 2626
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 2628
    :cond_4
    if-eqz v1, :cond_3

    .line 2629
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_0

    .line 2625
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 2626
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 2628
    :cond_5
    if-eqz v2, :cond_6

    .line 2629
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    :cond_6
    throw v0

    .line 2625
    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_2

    .line 2621
    :catch_1
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method static synthetic d(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    return-object v0
.end method

.method private d([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v9, 0x3e8

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 671
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::prepareAddCropEffect: themeFileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 673
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 674
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    .line 675
    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_CROP_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 676
    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 678
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 682
    iget-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;->ECrop_StartPosition:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;

    .line 683
    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;->ordinal()I

    move-result v5

    new-array v6, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v6, v1

    invoke-direct {v4, v5, v8, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>(II[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;)V

    aput-object v4, v3, v1

    .line 684
    iget-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v3, v3, v1

    iput v1, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 685
    iget-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v3, v3, v1

    const/16 v4, 0x1f4

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 686
    iget-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v3, v1

    invoke-virtual {v3, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 688
    iget-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    sget-object v5, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;->ECrop_ZoomLandscapeVideo:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;

    .line 689
    invoke-virtual {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;->ordinal()I

    move-result v5

    new-array v6, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v7, v6, v1

    invoke-direct {v4, v5, v8, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>(II[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;)V

    aput-object v4, v3, v8

    .line 690
    iget-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v3, v3, v1

    iput v1, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 691
    iget-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v3, v3, v1

    const/16 v4, 0x3f8

    iput v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 692
    iget-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v3, v3, v8

    invoke-virtual {v3, v9}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->setValueScale(I)Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 709
    aget-object v3, p1, v0

    new-array v4, v8, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    aput-object v2, v4, v1

    iput-object v4, v3, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->segEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 712
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->v:Z

    return p1
.end method

.method private d()[F
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->C:[F

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1634
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->B:F

    .line 1635
    iput-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->C:[F

    .line 1638
    sput-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    .line 1639
    sput-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    .line 1640
    iput-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->L:Ljava/util/ArrayList;

    .line 1643
    iput-boolean v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->u:Z

    .line 1644
    iput-boolean v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->v:Z

    .line 1645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->w:Z

    .line 1646
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1647
    return-void
.end method

.method private e([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 736
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string/jumbo v3, "prepareAddDissolveEffect: ++ "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v2, 0x0

    sput v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->G:I

    .line 739
    const/4 v4, -0x1

    .line 740
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 741
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v3}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableCredit()Z

    move-result v3

    if-nez v3, :cond_1

    .line 742
    add-int/lit8 v2, v2, -0x1

    move v3, v2

    .line 746
    :goto_0
    const/4 v2, 0x0

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_2

    .line 747
    sget-object v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "prepareAddDissolveEffect: ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "] Type: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "] Type: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v2, v5, 0x1

    .line 748
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 747
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->y:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v5, 0x1

    .line 750
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->y:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 751
    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->G:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->G:I

    .line 746
    :cond_0
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_1

    .line 744
    :cond_1
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string/jumbo v5, "prepareAddDissolveEffect: credit disabled."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto/16 :goto_0

    .line 755
    :cond_2
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prepareAddDissolveEffect: numOfdissolve: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->G:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->G:I

    new-array v6, v2, [Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;

    .line 757
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-ge v5, v3, :cond_4

    .line 758
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->y:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v2, v5, 0x1

    .line 759
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->y:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 760
    aget-object v2, p1, v5

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    aget-object v7, p1, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->startTimeMSec:I

    sub-int/2addr v2, v7

    int-to-float v2, v2

    .line 761
    const/high16 v7, 0x43fa0000    # 500.0f

    add-float/2addr v7, v2

    .line 762
    sget-object v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "prepareAddDissolveEffect: previousEdlDuration: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", newEdlDuration: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    div-float v8, v2, v7

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    .line 764
    aget-object v9, p1, v5

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    aget-object v10, p1, v5

    iget-object v10, v10, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v10, v10, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    sget v11, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->DISSOLVE_EFFECT_DURATION:I

    add-int/2addr v10, v11

    iput v10, v9, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    .line 766
    aget-object v9, p1, v5

    iget-object v9, v9, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    if-nez v9, :cond_3

    .line 767
    aget-object v2, p1, v5

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    iput-object v7, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    .line 768
    aget-object v2, p1, v5

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v7, 0x0

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    invoke-direct {v9}, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;-><init>()V

    aput-object v9, v2, v7

    .line 769
    aget-object v2, p1, v5

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    const/4 v7, 0x0

    iput v7, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->disableAudio:I

    .line 770
    aget-object v2, p1, v5

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v7, 0x0

    aget-object v7, v2, v7

    new-instance v9, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-wide v10, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    double-to-int v10, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    iget-wide v12, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v14

    double-to-int v2, v12

    invoke-direct {v9, v10, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v9, v7, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->effectInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 771
    aget-object v2, p1, v5

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;->E_MVVE_MOTION_EX_UNIFORM:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    iput-object v7, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->motionEffectID:Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectID;

    .line 772
    aget-object v2, p1, v5

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v10, v7, v9

    iput-object v7, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 773
    aget-object v2, p1, v5

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    const/4 v7, 0x1

    iput v7, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 774
    aget-object v2, p1, v5

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->EUniform_Speed:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEMotionEffects_Uniform;->ordinal()I

    move-result v7

    iput v7, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 775
    aget-object v2, p1, v5

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    new-instance v10, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v10}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v10, v7, v9

    iput-object v7, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 776
    aget-object v2, p1, v5

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    float-to-int v7, v8

    iput v7, v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 777
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "prepareAddDissolveEffect: speed: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :goto_3
    add-int/lit8 v2, v4, 0x1

    .line 786
    new-instance v4, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;

    invoke-direct {v4}, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;-><init>()V

    aput-object v4, v6, v2

    .line 787
    aget-object v4, v6, v2

    sget-object v7, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;->E_MVVE_CROSS_DISSOLVE:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    iput-object v7, v4, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;->transitionID:Lcom/muvee/dsg/mmap/api/videoeditor/TransitionID;

    .line 788
    aget-object v4, v6, v2

    new-instance v7, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    invoke-direct {v7}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>()V

    iput-object v7, v4, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 789
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    aget-object v7, p1, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    sget v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->DISSOLVE_EFFECT_DURATION:I

    sub-int/2addr v7, v8

    iput v7, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->startTimeMSec:I

    .line 790
    aget-object v4, v6, v2

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    aget-object v7, p1, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    iput v7, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    .line 792
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prepareAddDissolveEffect: transitionsDescriptors ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v2

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->startTimeMSec:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v2

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :goto_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    goto/16 :goto_2

    .line 779
    :cond_3
    aget-object v8, p1, v5

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 780
    div-float/2addr v2, v7

    int-to-float v7, v8

    mul-float/2addr v2, v7

    .line 781
    aget-object v7, p1, v5

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->motionEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;

    const/4 v9, 0x0

    aget-object v7, v7, v9

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/MotionEffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v9, 0x0

    aget-object v7, v7, v9

    iget-object v7, v7, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    const/4 v9, 0x0

    aget-object v7, v7, v9

    float-to-int v9, v2

    iput v9, v7, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 782
    sget-object v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "prepareAddDissolveEffect: previousSpeed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newSpeed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 797
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v2, v6}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setVideoTransitions([Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;)V

    .line 798
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string/jumbo v3, "prepareAddDissolveEffect: -- "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void

    :cond_5
    move v2, v4

    goto :goto_4
.end method

.method static synthetic e(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->P:Z

    return v0
.end method

.method static synthetic e(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Z)Z
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->w:Z

    return p1
.end method

.method private f()D
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 1651
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    if-eqz v0, :cond_4

    .line 1653
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    invoke-direct {p0, v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1656
    invoke-direct {p0, v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->L:Ljava/util/ArrayList;

    .line 1658
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 1659
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Start : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", End : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Duration : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v8, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    .line 1665
    iget-object v1, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    iget-object v5, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->z:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1666
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v2

    :goto_2
    move-wide v2, v0

    .line 1671
    goto :goto_1

    .line 1667
    :cond_1
    iget-object v1, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    iget-object v5, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->A:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1668
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v2

    goto :goto_2

    .line 1670
    :cond_2
    iget-wide v6, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    iget-wide v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    sub-double v0, v6, v0

    add-double/2addr v0, v2

    goto :goto_2

    .line 1673
    :cond_3
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processSegmentsForComposition: Total Duration : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_4
    return-wide v2
.end method

.method static synthetic f(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->R:I

    return v0
.end method

.method static synthetic g(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->S:I

    return v0
.end method

.method private g()V
    .locals 14

    .prologue
    const/4 v0, -0x1

    const-wide v12, 0x4066800000000000L    # 180.0

    const-wide v10, 0x4056800000000000L    # 90.0

    const-wide v8, -0x3f99800000000000L    # -180.0

    const-wide v6, -0x3fa9800000000000L    # -90.0

    .line 2497
    sput v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    .line 2498
    sput v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->endIndex:I

    .line 2499
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 2500
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v2, v6

    if-ltz v0, :cond_2

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpg-double v0, v2, v10

    if-gtz v0, :cond_2

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    .line 2501
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v2, v8

    if-ltz v0, :cond_2

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpg-double v0, v2, v12

    if-gtz v0, :cond_2

    .line 2502
    sput v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    .line 2509
    :cond_0
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 2510
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v2, v6

    if-ltz v0, :cond_3

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpg-double v0, v2, v10

    if-gtz v0, :cond_3

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    .line 2511
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v2, v8

    if-ltz v0, :cond_3

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpg-double v0, v2, v12

    if-gtz v0, :cond_3

    .line 2512
    sput v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->endIndex:I

    .line 2519
    :cond_1
    return-void

    .line 2505
    :cond_2
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::setStartEndIndexAfterCheckInvalid:: START_INDEX locationArray["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "].Lat: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", long: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    .line 2506
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2505
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 2515
    :cond_3
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::setStartEndIndexAfterCheckInvalid:: END_INDEX locationArray["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "].Lat: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", long: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    .line 2516
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2515
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method public static getInstance()Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->D:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    invoke-direct {v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;-><init>()V

    sput-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->D:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    .line 224
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->isMadeResource:[Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 226
    :cond_0
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->D:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;

    return-object v0
.end method

.method public static getInternalAppCacheFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .prologue
    .line 2443
    const-string v0, "cache"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 2444
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::getInternalAppCacheFolder: path -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    return-object v0
.end method

.method public static getSegValueForFadeIn()I
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2930
    :try_start_0
    sget v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_IN_DURATION:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v2

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v1}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, v6

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2935
    :goto_0
    return v0

    .line 2931
    :catch_0
    move-exception v0

    .line 2932
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2933
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSegValueForFadeOut()I
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2941
    :try_start_0
    sget v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->VIDEO_FADE_OUT_DURATION:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v2

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v1}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, v6

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    rsub-int v0, v0, 0x3e8

    .line 2946
    :goto_0
    return v0

    .line 2942
    :catch_0
    move-exception v0

    .line 2943
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2944
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method public static getStyleFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2482
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public static getTargetDurationMs()J
    .locals 4

    .prologue
    .line 2169
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::getTargetDurationMs: targetDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->targetDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    sget-wide v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->targetDuration:J

    return-wide v0
.end method

.method public static getWatermarkPath()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0x53

    .line 2456
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v0, v0, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->droneType:Ljava/lang/String;

    const-string v1, "Bebop 2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getStyleFolderPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/watermark/watermark_bebop2.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2458
    const/16 v1, 0x212

    sput v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkWidth:I

    .line 2459
    sput v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkHeight:I

    .line 2460
    sget v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkWidth:I

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x780

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->r:I

    sub-int/2addr v1, v2

    sput v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosX:I

    .line 2461
    sget v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkHeight:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->s:I

    add-int/2addr v1, v2

    sput v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosY:I

    .line 2469
    :goto_0
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWatermarkPath: watermarkPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    return-object v0

    .line 2463
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getStyleFolderPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/watermark/watermark_bebop.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2464
    const/16 v1, 0x272

    sput v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkWidth:I

    .line 2465
    sput v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkHeight:I

    .line 2466
    sget v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkWidth:I

    div-int/lit8 v1, v1, 0x2

    rsub-int v1, v1, 0x780

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->r:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    sput v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosX:I

    .line 2467
    sget v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkHeight:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->s:I

    add-int/2addr v1, v2

    sput v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosY:I

    goto :goto_0
.end method

.method static synthetic h(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->L:Ljava/util/ArrayList;

    return-object v0
.end method

.method private h()[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2522
    new-array v0, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    .line 2523
    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    aput-object v1, v0, v8

    .line 2524
    aget-object v1, v0, v8

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_GRAPHIC_OVERLAY_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 2526
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::addImageOverlay:: edlInterval: 0 to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v4

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v3}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    aget-object v1, v0, v8

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v4

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v3}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v3, v4

    invoke-direct {v2, v8, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 2529
    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    invoke-direct {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;-><init>()V

    .line 2530
    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_GraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->effectParamID:I

    .line 2531
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    invoke-direct {v2, v8, v8}, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;-><init>(II)V

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->mediaInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 2532
    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getWatermarkPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    .line 2534
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::addImageOverlay:: resourcePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Resource;->resourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    aget-object v2, v0, v8

    new-array v3, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    aput-object v1, v3, v8

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->resourceList:[Lcom/muvee/dsg/mmap/api/videoeditor/Resource;

    .line 2538
    aget-object v1, v0, v8

    const/16 v2, 0x9

    new-array v2, v2, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 2540
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v2, v1, v8

    .line 2541
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v8

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CoordX:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2542
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v8

    iput v9, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2543
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v8

    new-array v2, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2544
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v2, v1, v8

    .line 2545
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v8

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosX:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2547
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v2, v1, v9

    .line 2548
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v9

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CoordY:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2549
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v9

    iput v9, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2550
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v9

    new-array v2, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2551
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v9

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v2, v1, v8

    .line 2552
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v9

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v8

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->watermarkPosY:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2554
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v2, v1, v10

    .line 2555
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v10

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_ObjectWidth:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2556
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v10

    iput v9, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2557
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v10

    new-array v2, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2558
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v10

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v2, v1, v8

    .line 2559
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v10

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v8

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkWidth:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2561
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v2, v1, v11

    .line 2562
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v11

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_ObjectHeight:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2563
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v11

    iput v9, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2564
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v11

    new-array v2, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2565
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v11

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v2, v1, v8

    .line 2566
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v11

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v8

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->bgWatermarkHeight:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2568
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v2, v1, v12

    .line 2569
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v12

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_GraphicID:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2570
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v12

    iput v9, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2571
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v12

    new-array v2, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2572
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v12

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v2, v1, v8

    .line 2573
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v12

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v8

    iput v8, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2575
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x5

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v1, v2

    .line 2576
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_Opacity:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2577
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iput v9, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2578
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    new-array v2, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2579
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v2, v1, v8

    .line 2580
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v8

    const/16 v2, 0x64

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2582
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x6

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v1, v2

    .line 2583
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CanvasWidth:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2584
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iput v9, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2585
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    new-array v2, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2586
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v2, v1, v8

    .line 2587
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v8

    const/16 v2, 0x780

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2589
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x7

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v1, v2

    .line 2590
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_CanvasHeight:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2591
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iput v9, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2592
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    new-array v2, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2593
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v2, v1, v8

    .line 2594
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v8

    const/16 v2, 0x438

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2596
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/16 v2, 0x8

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>()V

    aput-object v3, v1, v2

    .line 2597
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    sget-object v2, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->EOverlayObject_TranslateZ:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;

    invoke-virtual {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_OverlayObjectParams;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->paramId:I

    .line 2598
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iput v9, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->numSeg:I

    .line 2599
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    new-array v2, v9, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    iput-object v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    .line 2600
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v2, v1, v8

    .line 2601
    aget-object v1, v0, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v8

    const/16 v2, 0xa

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 2603
    return-object v0
.end method

.method private i()Z
    .locals 15

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2717
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->highlights:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2718
    const/4 v0, 0x0

    move v1, v2

    .line 2719
    :goto_0
    iget-object v3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->highlights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2721
    :try_start_0
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2722
    :try_start_1
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->highlights:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvdronecomposer/HighlightSegment;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/HighlightSegment;->getVideoFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 2723
    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 2725
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v0, v5

    float-to-double v6, v0

    .line 2727
    sget-object v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "::isInvalidHighlight:: path: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->highlights:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvdronecomposer/HighlightSegment;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/HighlightSegment;->getVideoFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", duration: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->highlights:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvdronecomposer/HighlightSegment;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/HighlightSegment;->getStartTime()D

    move-result-wide v8

    .line 2730
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->highlights:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/muvee/mvdronecomposer/HighlightSegment;

    invoke-virtual {v0}, Lcom/muvee/mvdronecomposer/HighlightSegment;->getEndTime()D

    move-result-wide v10

    .line 2731
    cmpl-double v0, v8, v10

    if-ltz v0, :cond_1

    .line 2732
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::isInvalidHighlight:: startTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", endTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 2748
    :cond_0
    :goto_1
    return v2

    .line 2734
    :cond_1
    const-wide/16 v12, 0x0

    cmpg-double v0, v8, v12

    if-ltz v0, :cond_2

    cmpl-double v0, v10, v6

    if-lez v0, :cond_3

    .line 2735
    :cond_2
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "::isInvalidHighlight:: startTime: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", endTime: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", duration: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v4

    .line 2736
    goto :goto_1

    .line 2738
    :catch_0
    move-exception v0

    .line 2739
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2742
    :cond_3
    if-eqz v3, :cond_4

    .line 2743
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2719
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto/16 :goto_0

    .line 2738
    :catch_1
    move-exception v3

    move-object v14, v3

    move-object v3, v0

    move-object v0, v14

    goto :goto_2
.end method

.method static synthetic i(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->u:Z

    return v0
.end method

.method public static isVideoDroneTypeSupported(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2900
    new-instance v1, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;

    invoke-direct {v1}, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;-><init>()V

    .line 2902
    if-nez p0, :cond_0

    .line 2903
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v2, "isVideoDroneTypeSupported: videoPath is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    :goto_0
    return v0

    .line 2907
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2908
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoDroneTypeSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not exists!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2912
    :cond_1
    invoke-virtual {v1, p0}, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->checkVideoForEmbeddedData(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2913
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoDroneTypeSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not contain flight data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2917
    :cond_2
    invoke-virtual {v1, p0}, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->checkVideoForDroneTypeAtPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2918
    invoke-virtual {v1, p0}, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;->checkVideoForDroneTypeAtPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Disco"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2919
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::isVideoDroneTypeSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is Disco!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2922
    :cond_3
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoDroneTypeSupported: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic j(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)F
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c()F

    move-result v0

    return v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 2851
    const-string v0, "engine.thread"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2852
    const-string v0, "engine.thread"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2853
    const-string v0, "engine.thread"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->getHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2854
    return-void
.end method

.method static synthetic k(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->Q:J

    return-wide v0
.end method

.method static synthetic l(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->t:Z

    return v0
.end method

.method public static logBuildVersion(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 2268
    :try_start_0
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::logBuild RELEASE_TIMESTAMP: 20180125_1044AM, SDK VERSION = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/muvee/dsg/mmap/api/Version;->MAMS_JAR_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::logBuild DEVICE INFO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/os/Build$VERSION_CODES;

    .line 2270
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-API"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2269
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2275
    :goto_0
    return-void

    .line 2272
    :catch_0
    move-exception v0

    .line 2273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic m(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->e()V

    return-void
.end method

.method static synthetic n(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->w:Z

    return v0
.end method

.method static synthetic o(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->x:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic p(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)D
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->f()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic q(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->v:Z

    return v0
.end method

.method static synthetic r(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)Lcom/muvee/mvflightanalyser/MVFlightAnalyser;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->K:Lcom/muvee/mvflightanalyser/MVFlightAnalyser;

    return-object v0
.end method

.method static synthetic s(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->g()V

    return-void
.end method

.method public static setDrawblePointXY(II)V
    .locals 21

    .prologue
    .line 2755
    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 2756
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v3, "::setDrawblePointXY:: location data wrong!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    :cond_0
    return-void

    .line 2760
    :cond_1
    const/4 v2, 0x1

    .line 2762
    const/4 v3, 0x0

    sput v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    .line 2763
    const/16 v3, 0x64

    .line 2765
    new-array v4, v3, [D

    sput-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    .line 2766
    new-array v4, v3, [D

    sput-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    .line 2768
    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v4, v4, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 2769
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 2770
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::setDrawblePointXY:: divideNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v3, v2

    .line 2773
    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->startIndex:I

    move v4, v2

    :goto_0
    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->endIndex:I

    if-gt v4, v2, :cond_3

    .line 2774
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    const-wide v8, -0x3fa9800000000000L    # -90.0

    cmpl-double v2, v6, v8

    if-ltz v2, :cond_4

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    const-wide v8, 0x4056800000000000L    # 90.0

    cmpg-double v2, v6, v8

    if-gtz v2, :cond_4

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    .line 2775
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const-wide v8, -0x3f99800000000000L    # -180.0

    cmpl-double v2, v6, v8

    if-ltz v2, :cond_4

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const-wide v8, 0x4066800000000000L    # 180.0

    cmpg-double v2, v6, v8

    if-gtz v2, :cond_4

    .line 2776
    sget-object v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    sget v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v5, v6

    .line 2777
    sget-object v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    sget v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v5, v6

    .line 2778
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::setDrawblePointXY:: drawblePointX["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    sget v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    aget-wide v6, v6, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", drawblePointY["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    sget v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    aget-wide v6, v6, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    .line 2780
    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    const/16 v5, 0x63

    if-ne v2, v5, :cond_4

    .line 2786
    :cond_3
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->endIndex:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 2787
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentFlightAnalyserResult:Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;

    iget-object v2, v2, Lcom/muvee/mvflightanalyser/data/structures/MVFlightAnalyserResult;->locationArray:Ljava/util/ArrayList;

    sget v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->endIndex:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 2788
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "::setDrawblePointXY:: drawblePointX["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    sget v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    aget-wide v4, v4, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", drawblePointY["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    sget v5, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    aget-wide v4, v4, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    const-wide v8, -0x3f99800000000000L    # -180.0

    const-wide v4, -0x3fa9800000000000L    # -90.0

    .line 2793
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    const/4 v3, 0x0

    aget-wide v10, v2, v3

    .line 2794
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    const/4 v3, 0x0

    aget-wide v6, v2, v3

    .line 2795
    const/4 v2, 0x0

    :goto_1
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    if-gt v2, v3, :cond_5

    .line 2796
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    aget-wide v12, v3, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 2797
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    aget-wide v12, v3, v2

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 2799
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    aget-wide v12, v3, v2

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 2800
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    aget-wide v12, v3, v2

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 2795
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2773
    :cond_4
    add-int v2, v4, v3

    move v4, v2

    goto/16 :goto_0

    .line 2802
    :cond_5
    add-double v2, v10, v8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v2, v12

    .line 2803
    add-double v2, v6, v4

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v14, v2, v14

    .line 2804
    move/from16 v0, p0

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 2805
    move/from16 v0, p1

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v0, v2

    move-wide/from16 v18, v0

    .line 2807
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::setDrawblePointXY:: minX: "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", maxX: "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", minY: "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", maxY: "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "::setDrawblePointXY:: mapCenterX: "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", mapCenterY: "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", canvasCenterX: "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v20, ", canvasCenterY: "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v2, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 2811
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    const-wide v6, 0x3ff3333340000000L    # 1.2000000476837158

    div-double/2addr v4, v6

    .line 2813
    sget-object v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "::setDrawblePointXY:: mapSize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resizeRatio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    const/4 v2, 0x0

    :goto_2
    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->pointXYindex:I

    if-gt v2, v3, :cond_0

    .line 2816
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "::setDrawblePointXY:: BEFORE drawblePointX["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    aget-wide v8, v7, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mapCenterX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    const-wide/16 v6, 0x0

    cmpl-double v3, v12, v6

    if-lez v3, :cond_7

    .line 2818
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    aget-wide v6, v3, v2

    cmpl-double v3, v6, v12

    if-lez v3, :cond_6

    .line 2819
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    sget-object v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    aget-wide v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    add-double v6, v6, v16

    aput-wide v6, v3, v2

    .line 2830
    :goto_3
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "::setDrawblePointXY:: AFTER drawblePointX["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    aget-wide v8, v7, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mapCenterX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "::setDrawblePointXY:: BEFORE drawblePointY["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    aget-wide v8, v7, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mapCenterY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    const-wide/16 v6, 0x0

    cmpl-double v3, v14, v6

    if-lez v3, :cond_a

    .line 2834
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    aget-wide v6, v3, v2

    cmpl-double v3, v6, v14

    if-lez v3, :cond_9

    .line 2835
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    sget-object v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    aget-wide v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    sub-double v6, v18, v6

    aput-wide v6, v3, v2

    .line 2846
    :goto_4
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "::setDrawblePointXY:: AFTER drawblePointY["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    aget-wide v8, v7, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mapCenterY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 2821
    :cond_6
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sget-object v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    aget-wide v8, v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    sub-double v6, v16, v6

    aput-wide v6, v3, v2

    goto/16 :goto_3

    .line 2824
    :cond_7
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    aget-wide v6, v3, v2

    cmpl-double v3, v6, v12

    if-lez v3, :cond_8

    .line 2825
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    sget-object v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    aget-wide v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    sub-double v6, v16, v6

    aput-wide v6, v3, v2

    goto/16 :goto_3

    .line 2827
    :cond_8
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sget-object v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointX:[D

    aget-wide v8, v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    add-double v6, v6, v16

    aput-wide v6, v3, v2

    goto/16 :goto_3

    .line 2837
    :cond_9
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sget-object v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    aget-wide v8, v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    add-double v6, v6, v18

    aput-wide v6, v3, v2

    goto/16 :goto_4

    .line 2840
    :cond_a
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    aget-wide v6, v3, v2

    cmpl-double v3, v6, v14

    if-lez v3, :cond_b

    .line 2841
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    sget-object v6, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    aget-wide v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    add-double v6, v6, v18

    aput-wide v6, v3, v2

    goto/16 :goto_4

    .line 2843
    :cond_b
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    sget-object v8, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->drawblePointY:[D

    aget-wide v8, v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    sub-double v6, v18, v6

    aput-wide v6, v3, v2

    goto/16 :goto_4
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 2435
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::extractResources::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    invoke-static {p1}, Lcom/muvee/mvdronecomposer/ResourceExtractingTask2;->copyAsset(Landroid/content/Context;)V

    .line 2440
    return-void
.end method

.method public addToMediaStoreForVideo(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11

    .prologue
    .line 2324
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2325
    new-instance v1, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;

    invoke-direct {v1}, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;-><init>()V

    .line 2326
    new-instance v2, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;

    invoke-direct {v2}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;-><init>()V

    .line 2327
    invoke-virtual {v2, p2, v1}, Lcom/muvee/dsg/mmap/api/mediareader/MediaReader;->getStreamInfo(Ljava/lang/String;Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;)I

    .line 2328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->J:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    iget v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->width:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->J:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    iget v5, v5, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->height:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2331
    new-instance v5, Landroid/content/ContentValues;

    const/16 v6, 0xc

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 2332
    const-string/jumbo v6, "title"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    const-string v6, "_display_name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    const-string v6, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2335
    const-string v6, "date_modified"

    const-wide/16 v8, 0x3e8

    div-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2336
    const-string v6, "date_added"

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2337
    const-string v2, "mime_type"

    const-string/jumbo v3, "video/mp4"

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    const-string v2, "_data"

    invoke-virtual {v5, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    const-string/jumbo v2, "width"

    iget-object v3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->J:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->width:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    const-string v2, "height"

    iget-object v3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->J:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    iget v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->height:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    const-string v2, "duration"

    iget v1, v1, Lcom/muvee/dsg/mmap/api/mediareader/StreamInfo;->videoDuration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2342
    const-string/jumbo v1, "resolution"

    invoke-virtual {v5, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2343
    const-string v1, "_size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2344
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2345
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::addToMediaStoreForVideo uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    return-object v0
.end method

.method public cancelAnalysis()V
    .locals 2

    .prologue
    .line 1143
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::cancelAnalysis::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->t:Z

    .line 1145
    return-void
.end method

.method public cancelExport()V
    .locals 2

    .prologue
    .line 1158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->I:Z

    .line 1159
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 1160
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::cancelExport::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->cancel()V

    .line 1162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    .line 1164
    :cond_0
    return-void
.end method

.method public cancelledExport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 2358
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::cancelledExport outputPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    if-eqz p2, :cond_0

    .line 2360
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2361
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2362
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2363
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2365
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2371
    :cond_0
    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->init(Landroid/content/Context;)V

    .line 2372
    return-void
.end method

.method public checkForReanalysis(Lcom/muvee/mvdronecomposer/SettingsParam;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2377
    invoke-virtual {p1}, Lcom/muvee/mvdronecomposer/SettingsParam;->getMusicPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->getMusicPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2378
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::checkForReanalysis:: new getMusicPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/muvee/mvdronecomposer/SettingsParam;->getMusicPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old getMusicPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v2}, Lcom/muvee/mvdronecomposer/SettingsParam;->getMusicPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    iput-boolean v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->u:Z

    .line 2380
    iput-boolean v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->w:Z

    .line 2384
    :cond_0
    invoke-virtual {p1}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDataFilePathArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDataFilePathArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 2385
    const/4 v0, 0x0

    .line 2387
    invoke-virtual {p1}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDataFilePathArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2388
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v3}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDataFilePathArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2389
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 2391
    goto :goto_0

    .line 2393
    :cond_1
    invoke-virtual {p1}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDataFilePathArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 2395
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->x:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2396
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2398
    :cond_2
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::checkForReanalysis:: Different DataFilePathArray"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    iput-boolean v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->v:Z

    .line 2400
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->isMadeResource:[Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2413
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/muvee/mvdronecomposer/SettingsParam;->getStyleIndex()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->getStyleIndex()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 2414
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::checkForReanalysis:: new getStyleIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/muvee/mvdronecomposer/SettingsParam;->getStyleIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old getStyleIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v2}, Lcom/muvee/mvdronecomposer/SettingsParam;->getStyleIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    iput-boolean v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->w:Z

    .line 2418
    :cond_4
    invoke-virtual {p1}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDuration()I

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDuration()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 2419
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::checkForReanalysis:: new getDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old getDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v2}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iput-boolean v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->w:Z

    .line 2423
    :cond_5
    invoke-virtual {p1}, Lcom/muvee/mvdronecomposer/SettingsParam;->isAllowTakeOff()Z

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->isAllowTakeOff()Z

    move-result v1

    if-eq v0, v1, :cond_6

    .line 2424
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::checkForReanalysis:: new isAllowTakeOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/muvee/mvdronecomposer/SettingsParam;->isAllowTakeOff()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old isAllowTakeOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v2}, Lcom/muvee/mvdronecomposer/SettingsParam;->isAllowTakeOff()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    iput-boolean v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->w:Z

    .line 2428
    :cond_6
    invoke-virtual {p1}, Lcom/muvee/mvdronecomposer/SettingsParam;->isAllowLanding()Z

    move-result v0

    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->isAllowLanding()Z

    move-result v1

    if-eq v0, v1, :cond_7

    .line 2429
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::checkForReanalysis:: new isAllowLanding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/muvee/mvdronecomposer/SettingsParam;->isAllowLanding()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old isAllowLanding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v2}, Lcom/muvee/mvdronecomposer/SettingsParam;->isAllowLanding()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    iput-boolean v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->w:Z

    .line 2432
    :cond_7
    return-void

    .line 2404
    :cond_8
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->x:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 2405
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2407
    :cond_9
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::checkForReanalysis:: Different DataFilePathArray"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    iput-boolean v4, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->v:Z

    .line 2409
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->isMadeResource:[Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_a
    move v0, v1

    goto/16 :goto_1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1107
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::close::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->j()V

    .line 1116
    new-instance v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;

    invoke-direct {v0, p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$7;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)V

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->q:Ljava/lang/Runnable;

    .line 1139
    const-string v0, "engine.thread"

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->q:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1140
    return-void
.end method

.method public getAvailableTotalDurationMs()J
    .locals 2

    .prologue
    .line 2892
    iget-wide v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->U:J

    return-wide v0
.end method

.method public getCreditsPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getStyleFolderPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/credits/credits.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2450
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCreditsPath: creditPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    return-object v0
.end method

.method public getExportFileName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2280
    const-string v0, "MVDroneComposer-"

    .line 2281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%04d.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2283
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2285
    if-nez v0, :cond_0

    .line 2286
    const/4 v0, 0x0

    .line 2303
    :goto_0
    return-object v0

    .line 2289
    :cond_0
    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->Y:I

    .line 2290
    iget v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->Y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->Y:I

    .line 2292
    new-array v0, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->Y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2294
    :goto_1
    invoke-direct {p0, v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2295
    iget v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->Y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->Y:I

    .line 2296
    new-array v0, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->Y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2299
    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->Y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2301
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::getExportFileName:: name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHighlights()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvdronecomposer/HighlightSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->highlights:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumberOfHighlightsDropped()I
    .locals 1

    .prologue
    .line 2896
    iget v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->T:I

    return v0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->X:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public increaseExportCount()V
    .locals 4

    .prologue
    .line 2307
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2308
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a:Ljava/lang/String;

    iget v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->Y:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2310
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::increaseExportCount:: exportCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->Y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2313
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    if-nez v0, :cond_0

    .line 1089
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::init::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;-><init>()V

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    .line 1091
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->init()V

    .line 1093
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/muvee/util/JNIUtil;->setLogPriorityLevel(I)V

    .line 1096
    :cond_0
    invoke-static {p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->logBuildVersion(Landroid/content/Context;)V

    .line 1098
    invoke-virtual {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1099
    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->setPreferences(Landroid/content/Context;)V

    .line 1102
    :cond_1
    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Landroid/content/Context;)V

    .line 1103
    invoke-virtual {p0, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->setStyleFolderPath(Landroid/content/Context;)V

    .line 1104
    return-void
.end method

.method public pausePreview()V
    .locals 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 1149
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::pausePreview::"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->j()V

    .line 1151
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->pause()V

    .line 1153
    :cond_0
    return-void
.end method

.method public resumeExport()V
    .locals 3

    .prologue
    .line 921
    new-instance v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5;

    invoke-direct {v0, p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$5;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;)V

    .line 970
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 971
    return-void
.end method

.method public declared-synchronized resumeSave(Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 2

    .prologue
    .line 975
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/sdk/Engine;->setSupportFastMotion(Z)V

    .line 977
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->J:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    invoke-virtual {v0, v1, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->save(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    :cond_0
    monitor-exit p0

    return-void

    .line 975
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized save(Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 2

    .prologue
    .line 893
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/sdk/Engine;->setSupportFastMotion(Z)V

    .line 895
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    if-eqz v0, :cond_1

    .line 896
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->isNeedToInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    :cond_0
    :try_start_1
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;->b:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    invoke-direct {p0, v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 908
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 909
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::save:: E_MVVE_TIMELINE_AUTO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->E_MVVE_TIMELINE_AUTO:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->buildTimeline(Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;)V

    .line 916
    :goto_1
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->F:Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;

    .line 917
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->J:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    invoke-virtual {v0, v1, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->save(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 918
    :cond_1
    monitor-exit p0

    return-void

    .line 904
    :catch_0
    move-exception v0

    .line 905
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 893
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 912
    :cond_2
    :try_start_4
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::save:: E_MVVE_TIMELINE_MANUAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->E_MVVE_TIMELINE_MANUAL:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->buildTimeline(Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public seek(ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1167
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1168
    :cond_0
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v4, "::seek:: surface==null(%b), surface.holder==null(%b) "

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    if-nez p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {p2}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 1168
    goto :goto_0

    .line 1172
    :cond_3
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/sdk/Engine;->setSupportFastMotion(Z)V

    .line 1174
    monitor-enter p0

    .line 1175
    :try_start_0
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    if-eqz v0, :cond_5

    .line 1176
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->isNeedToInit()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1177
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    :cond_4
    :try_start_1
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;->c:Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;

    invoke-direct {p0, v0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1189
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/muvee/dsg/sdk/Engine;->setMmsaGLSurfaceView(Lcom/muvee/studio/view/MmsaGLSurfaceView;)V

    .line 1191
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::seek:: Preview Param height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->previewParam:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->previewParam:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->previewParam:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->setPreviewParam(Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)V

    .line 1194
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1195
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::seek:: E_MVVE_TIMELINE_AUTO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->E_MVVE_TIMELINE_AUTO:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->buildTimeline(Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;)V

    .line 1202
    :goto_3
    invoke-virtual {p2}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1203
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::seek:: getSurface().isValid() == false !!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    monitor-exit p0

    goto/16 :goto_1

    .line 1236
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1180
    :cond_5
    :try_start_3
    monitor-exit p0

    goto/16 :goto_1

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1198
    :cond_6
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v1, "::seek:: E_MVVE_TIMELINE_MANUAL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->E_MVVE_TIMELINE_MANUAL:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->buildTimeline(Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;)V

    goto :goto_3

    .line 1206
    :cond_7
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    if-eqz v0, :cond_8

    .line 1207
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->isNeedToInit()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1208
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->init()V

    .line 1212
    :cond_8
    int-to-long v0, p1

    invoke-static {}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getTargetDurationMs()J

    move-result-wide v2

    const-wide/16 v4, 0x32

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 1213
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::seek:: seekTimeMS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    new-instance v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$8;

    invoke-direct {v2, p0, p2, p3}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$8;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Lcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    invoke-virtual {v1, v0, v2, p3}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->seek(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 1236
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method public seekTo(JLcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 7

    .prologue
    .line 239
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->L:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->j()V

    .line 245
    if-eqz p3, :cond_1

    .line 246
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seekTo: surface size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getViewWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getViewHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    new-instance v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$1;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;JLcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b:Ljava/lang/Runnable;

    .line 305
    const-string v0, "engine.thread"

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public sendBroadcaseNewVideo(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 2350
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::sendBroadcaseNewVideo uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2352
    const-string v1, "android.hardware.action.NEW_VIDEO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2353
    const-string/jumbo v1, "video/mp4"

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2354
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2355
    return-void
.end method

.method public setCreditItem(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 2124
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::setCreditItem: creditPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const/4 v1, 0x0

    .line 2127
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v0, p1}, Lcom/muvee/mvdronecomposer/VideoItem;->setPath(Ljava/lang/String;)V

    .line 2129
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2130
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 2131
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 2132
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/muvee/mvdronecomposer/VideoItem;->setDurationMs(J)V

    .line 2134
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCreditItem: creditItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v3}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2139
    :goto_0
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->currentSettingsParam:Lcom/muvee/mvdronecomposer/SettingsParam;

    invoke-virtual {v1}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableCredit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2140
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/muvee/mvdronecomposer/VideoItem;->setDurationMs(J)V

    .line 2153
    :goto_1
    if-eqz v0, :cond_0

    .line 2154
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2156
    :cond_0
    return-void

    .line 2135
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 2136
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2142
    :cond_1
    new-instance v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;

    invoke-direct {v1}, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;-><init>()V

    .line 2143
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v2}, Lcom/muvee/mvdronecomposer/VideoItem;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->dataFilePath:Ljava/lang/String;

    .line 2144
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    .line 2145
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->W:Lcom/muvee/mvdronecomposer/VideoItem;

    invoke-virtual {v2}, Lcom/muvee/mvdronecomposer/VideoItem;->getDurationMs()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    iput-wide v2, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    .line 2146
    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->y:Ljava/lang/String;

    iput-object v2, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->compositionEffectType:Ljava/lang/String;

    .line 2148
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCreditItem: creditTimingsArray.startTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->startTime:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", creditTimingsArray.endTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/muvee/mvflightanalyser/data/structures/MVFlightTimings;->endTime:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2135
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public setHighlights(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/muvee/mvdronecomposer/HighlightSegment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    iput-object p1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->highlights:Ljava/util/ArrayList;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->w:Z

    .line 180
    return-void
.end method

.method public setMusicItem(Ljava/lang/String;F)V
    .locals 6

    .prologue
    .line 2095
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::setMusicItem:: musicPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    if-nez p1, :cond_1

    .line 2118
    :cond_0
    :goto_0
    return-void

    .line 2101
    :cond_1
    const/4 v2, 0x0

    .line 2103
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    invoke-virtual {v0, p1}, Lcom/muvee/mvdronecomposer/MusicItem;->setPath(Ljava/lang/String;)V

    .line 2104
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    invoke-virtual {v0, p2}, Lcom/muvee/mvdronecomposer/MusicItem;->setStartTimeMs(F)V

    .line 2107
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2108
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 2109
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 2110
    iget-object v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->V:Lcom/muvee/mvdronecomposer/MusicItem;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/muvee/mvdronecomposer/MusicItem;->setDurationMs(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2115
    :goto_1
    if-eqz v1, :cond_0

    .line 2116
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .line 2111
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 2112
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2111
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public setPreferences(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 2263
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->X:Landroid/content/SharedPreferences;

    .line 2264
    return-void
.end method

.method public setPreviewParam(Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1242
    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    invoke-direct {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;-><init>()V

    .line 1243
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviewParam: newPreviewParam.width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newPreviewParam.height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/4 v0, 0x1

    .line 1245
    iget v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, p1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    const v3, 0x3fe38e39

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1246
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string/jumbo v2, "setPreviewParam: width and height ratio is not 16:9 - set preview param to 1920x1080 as default"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const/4 v0, 0x0

    .line 1251
    :goto_0
    iget v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1252
    iget v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    .line 1256
    :goto_1
    iget v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 1257
    iget v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    .line 1261
    :goto_2
    iget v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->frameRate:I

    if-eqz v0, :cond_3

    .line 1262
    iget v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->frameRate:I

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->frameRate:I

    .line 1267
    :goto_3
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::setPreviewParam:: width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", frameRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->frameRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iput-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->previewParam:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    .line 1270
    return-void

    .line 1249
    :cond_0
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string/jumbo v3, "setPreviewParam: width and height ratio is 16:9"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1254
    :cond_1
    iget v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->h:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->width:I

    goto :goto_1

    .line 1259
    :cond_2
    iget v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->i:I

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->height:I

    goto :goto_2

    .line 1264
    :cond_3
    iget v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->j:I

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;->frameRate:I

    goto :goto_3
.end method

.method public setSaveParam(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1275
    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    invoke-direct {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;-><init>()V

    .line 1277
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSaveParam: newSaveParam.width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newSaveParam.height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const/4 v0, 0x1

    .line 1279
    iget v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    const v3, 0x3fe38e39

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1280
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string/jumbo v2, "setSaveParam: width and height ratio is not 16:9 - set save param to 1920x1080 as default"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const/4 v0, 0x0

    .line 1286
    :goto_0
    iget-object v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->savePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->setSavePath(Ljava/lang/String;)Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    .line 1287
    iget v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->width:I

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1288
    iget v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->width:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->width:I

    .line 1292
    :goto_1
    iget v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->height:I

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 1293
    iget v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->height:I

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->height:I

    .line 1297
    :goto_2
    iget v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->bitRate:I

    if-eqz v0, :cond_3

    .line 1298
    const v0, 0x1312d00

    iget v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->bitRate:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->bitRate:I

    .line 1302
    :goto_3
    iget v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->frameRate:I

    if-eqz v0, :cond_4

    .line 1303
    const/16 v0, 0x1c

    iget v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->frameRate:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->frameRate:I

    .line 1308
    :goto_4
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "::setSaveParam:: width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bitRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->bitRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", frameRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->frameRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iput-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->J:Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;

    .line 1311
    return-void

    .line 1283
    :cond_0
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string/jumbo v3, "setSaveParam: width and height ratio is 16:9"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1290
    :cond_1
    iget v2, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->k:I

    iput v2, v1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->width:I

    goto :goto_1

    .line 1295
    :cond_2
    iget v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->l:I

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->height:I

    goto :goto_2

    .line 1300
    :cond_3
    iget v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->m:I

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->bitRate:I

    goto :goto_3

    .line 1305
    :cond_4
    iget v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->n:I

    iput v0, v1, Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;->frameRate:I

    goto :goto_4
.end method

.method public setStyleFolderPath(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 2476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->getInternalAppCacheFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/styles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2477
    sget-object v1, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStyleFolderPath: stylePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    sput-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->Z:Ljava/lang/String;

    .line 2479
    return-void
.end method

.method public setTargetDurationMs([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V
    .locals 6

    .prologue
    .line 2160
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->targetDuration:J

    .line 2161
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2162
    sget-wide v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->targetDuration:J

    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->startTimeMSec:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->targetDuration:J

    .line 2161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2164
    :cond_0
    sget-wide v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->targetDuration:J

    sget v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->G:I

    sget v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->DISSOLVE_EFFECT_DURATION:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->targetDuration:J

    .line 2165
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "::setTargetDurationMs: targetDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->targetDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    return-void
.end method

.method public startExport(Landroid/content/Context;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 3

    .prologue
    .line 983
    new-instance v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$6;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;Landroid/content/Context;)V

    .line 1079
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1080
    return-void
.end method

.method public startMvFlightAnalyser(Landroid/content/Context;Lcom/muvee/mvdronecomposer/SettingsParam;Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;)V
    .locals 22

    .prologue
    .line 1330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->K:Lcom/muvee/mvflightanalyser/MVFlightAnalyser;

    if-nez v2, :cond_0

    .line 1331
    new-instance v2, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;

    invoke-direct {v2}, Lcom/muvee/mvflightanalyser/MVFlightAnalyser;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->K:Lcom/muvee/mvflightanalyser/MVFlightAnalyser;

    .line 1333
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDataFilePathArray()Ljava/util/ArrayList;

    move-result-object v9

    .line 1334
    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 1335
    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->getSubtitle()Ljava/lang/String;

    move-result-object v11

    .line 1336
    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->getStyleIndex()I

    move-result v12

    .line 1337
    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->getThemeIndex()I

    move-result v13

    .line 1338
    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->getDuration()I

    move-result v4

    .line 1339
    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->getMusicPath()Ljava/lang/String;

    move-result-object v6

    .line 1340
    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->getMusicStartTimeMs()F

    move-result v7

    .line 1341
    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->isAllowTakeOff()Z

    move-result v14

    .line 1342
    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->isAllowLanding()Z

    move-result v15

    .line 1343
    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableCredit()Z

    move-result v16

    .line 1344
    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableWatermark()Z

    move-result v17

    .line 1345
    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableLocationAndDate()Z

    move-result v18

    .line 1346
    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableTelemetry()Z

    move-result v19

    .line 1347
    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->isDisableMapTrace()Z

    move-result v20

    .line 1349
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->t:Z

    .line 1350
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->R:I

    .line 1351
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->S:I

    .line 1353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->Q:J

    .line 1356
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->T:I

    .line 1357
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->U:J

    .line 1359
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::startMvFlightAnalyser:: startedDoInBackground: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->P:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->P:Z

    .line 1362
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "::startMvFlightAnalyser:: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/muvee/mvdronecomposer/SettingsParam;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->c(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1365
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v3, "::startMvFlightAnalyser:: ERROR_INVALID_VIDEO"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const/16 v2, 0x64

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;->onError(I)V

    .line 1629
    :goto_0
    return-void

    .line 1368
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1369
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v3, "::startMvFlightAnalyser:: ERROR_INVALID_MUSIC"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/16 v2, 0x65

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;->onError(I)V

    goto :goto_0

    .line 1372
    :cond_2
    if-ltz v12, :cond_3

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->styleNameArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v12, v2, :cond_4

    .line 1373
    :cond_3
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v3, "::startMvFlightAnalyser:: ERROR_INVALID_STYLE_INDEX"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    const/16 v2, 0x66

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;->onError(I)V

    goto :goto_0

    .line 1376
    :cond_4
    if-ltz v13, :cond_5

    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->themeNameArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v13, v2, :cond_6

    .line 1377
    :cond_5
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v3, "::startMvFlightAnalyser:: ERROR_INVALID_THEME_INDEX"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const/16 v2, 0x6c

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;->onError(I)V

    goto :goto_0

    .line 1380
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->i()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1381
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v3, "::startMvFlightAnalyser:: ERROR_INVALID_HIGHLIGHT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    const/16 v2, 0x68

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;->onError(I)V

    goto :goto_0

    .line 1386
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->a(Ljava/util/ArrayList;I)I

    move-result v2

    .line 1387
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startMvFlightAnalyser: checkDurationResuult: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    .line 1389
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;->onError(I)V

    goto/16 :goto_0

    .line 1393
    :cond_8
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->styleNameArray:Ljava/util/ArrayList;

    const-string v3, "Cinematic"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v12, v2, :cond_9

    .line 1394
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->M:Z

    .line 1395
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->N:Z

    .line 1405
    :goto_1
    new-instance v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;

    move-object/from16 v3, p0

    move-object/from16 v5, p3

    move-object/from16 v8, p2

    move-object/from16 v21, p1

    invoke-direct/range {v2 .. v21}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$9;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;ILcom/muvee/mvdronecomposer/MVFlightAnalyserCallBack;Ljava/lang/String;FLcom/muvee/mvdronecomposer/SettingsParam;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIZZZZZZZLandroid/content/Context;)V

    .line 1628
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1396
    :cond_9
    sget-object v2, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->styleNameArray:Ljava/util/ArrayList;

    const-string v3, "Trailer"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v12, v2, :cond_a

    .line 1397
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->M:Z

    .line 1398
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->N:Z

    goto :goto_1

    .line 1400
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->M:Z

    .line 1401
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->N:Z

    goto :goto_1
.end method

.method public startPreview(ILcom/muvee/studio/view/MmsaGLSurfaceView;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 316
    invoke-direct {p0}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->j()V

    .line 318
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_3

    .line 319
    :cond_0
    sget-object v3, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    const-string v4, "::preview: surface==null(%b), surface.holder==null(%b) "

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    if-nez p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {p2}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 319
    goto :goto_0

    .line 322
    :cond_3
    sget-object v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreview: surface size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getViewWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/muvee/studio/view/MmsaGLSurfaceView;->getViewHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine$2;-><init>(Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;ILcom/muvee/studio/view/MmsaGLSurfaceView;)V

    iput-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->E:Ljava/lang/Runnable;

    .line 412
    const-string v0, "engine.thread"

    iget-object v1, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->E:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/os/util/LooperThread;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public videoEditorClose()V
    .locals 1

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    if-eqz v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/muvee/mvdronecomposer/MVDroneComposerEngine;->H:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->close()V

    .line 2177
    :cond_0
    return-void
.end method
