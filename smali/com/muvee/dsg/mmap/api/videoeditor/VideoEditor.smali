.class public Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;
.super Ljava/lang/Object;
.source "VideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;,
        Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;,
        Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:I

.field private static x:I

.field private static y:I


# instance fields
.field private A:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

.field private m:I

.field private n:[Z

.field private u:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

.field private v:I

.field private w:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 79
    const-class v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a:Ljava/lang/String;

    .line 85
    sput v1, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->b:I

    .line 87
    const/4 v0, 0x3

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->c:I

    .line 88
    sput v2, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->d:I

    .line 89
    const/4 v0, 0x5

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->e:I

    .line 90
    const/4 v0, 0x6

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->f:I

    .line 91
    const/4 v0, 0x7

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->g:I

    .line 92
    sput v3, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->h:I

    .line 93
    const/16 v0, 0x9

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->i:I

    .line 94
    const/16 v0, 0xa

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->j:I

    .line 95
    const/16 v0, 0xb

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->k:I

    .line 97
    const/16 v0, 0xd

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->l:I

    .line 117
    sput v1, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->o:I

    .line 118
    const/4 v0, 0x2

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->p:I

    .line 119
    sput v2, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->q:I

    .line 120
    sput v3, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->r:I

    .line 121
    const/16 v0, 0x10

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->s:I

    .line 122
    const/16 v0, 0x20

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->t:I

    .line 559
    const/16 v0, 0x1400

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->x:I

    .line 560
    const/16 v0, 0x32

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->y:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->m:I

    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [Z

    aput-boolean v1, v0, v1

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->n:[Z

    .line 128
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->UN_INITIALIZED:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->u:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    .line 129
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->v:I

    .line 151
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->m:I

    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [Z

    aput-boolean v1, v0, v1

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->n:[Z

    .line 128
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->UN_INITIALIZED:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->u:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    .line 129
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->v:I

    .line 154
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;F)F
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->z:F

    return p1
.end method

.method private declared-synchronized a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized a(I)V
    .locals 2

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->v:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->v:I

    .line 137
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$18;->a:[I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->u:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->READLY:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->u:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 139
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Set****** called before initiliziing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;)V
    .locals 1

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->u:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->d()V

    return-void
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->x:I

    return v0
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->m:I

    return v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->f:I

    return v0
.end method

.method static synthetic c(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)[Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->n:[Z

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 546
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$18;->a:[I

    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->u:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    invoke-virtual {v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 557
    :goto_0
    return-void

    .line 548
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "called without initilizing"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "called before setting parameters"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :pswitch_2
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;->E_MVVE_TIMELINE_MANUAL:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeBuildTimeline(Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;)I

    .line 553
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->BUILT:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;)V

    goto :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method a(Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 295
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->segEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->segEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->captionText:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->captionText:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    array-length v0, v0

    if-gtz v0, :cond_4

    :cond_2
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->colorFilter:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->colorFilter:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    array-length v0, v0

    if-gtz v0, :cond_4

    :cond_3
    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->imageOverlay:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->imageOverlay:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 302
    :cond_4
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;-><init>()V

    .line 303
    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;->E_MVVE_CROP_EFFECT:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    iput-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->effectID:Lcom/muvee/dsg/mmap/api/videoeditor/EffectID;

    .line 305
    iget-object v1, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iput-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    .line 307
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    iput-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    .line 309
    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;->ECrop_TexPosX0:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;

    .line 311
    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;->ordinal()I

    move-result v3

    new-array v4, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v7, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>(II[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;)V

    aput-object v2, v1, v6

    .line 314
    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v6

    iput v6, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 315
    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v6

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v6

    iput v6, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 317
    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;->ECrop_TexPosY0:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;

    .line 319
    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;->ordinal()I

    move-result v3

    new-array v4, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v7, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>(II[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;)V

    aput-object v2, v1, v7

    .line 322
    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v6

    iput v6, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 323
    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v6

    iput v6, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 325
    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;->ECrop_TexPosX3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;

    .line 327
    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;->ordinal()I

    move-result v3

    new-array v4, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v7, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>(II[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;)V

    aput-object v2, v1, v8

    .line 330
    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v6

    iput v6, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 331
    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v8

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v6

    iput v10, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 333
    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    sget-object v3, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;->ECrop_TexPosY3:Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;

    .line 335
    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/ParamIds$MVVEEffects_CropParams;->ordinal()I

    move-result v3

    new-array v4, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    new-instance v5, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    invoke-direct {v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;-><init>()V

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v7, v4}, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;-><init>(II[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;)V

    aput-object v2, v1, v9

    .line 338
    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v9

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v6

    iput v6, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->time:I

    .line 339
    iget-object v1, v0, Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;->paramList:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;

    aget-object v1, v1, v9

    iget-object v1, v1, Lcom/muvee/dsg/mmap/api/videoeditor/EffectParam;->seg:[Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;

    aget-object v1, v1, v6

    iput v10, v1, Lcom/muvee/dsg/mmap/api/videoeditor/AnimSeg;->value:I

    .line 341
    new-array v1, v7, [Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    aput-object v0, v1, v6

    iput-object v1, p1, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->segEffects:[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;

    goto/16 :goto_0
.end method

.method public buildTimeline(Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;)V
    .locals 1

    .prologue
    .line 1224
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$15;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$15;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 1230
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->A:Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;

    .line 1231
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->BUILT:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;)V

    .line 1232
    return-void
.end method

.method public cancel()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 780
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a:Ljava/lang/String;

    const-string v1, "::cancel: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "+"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->n:[Z

    monitor-enter v1

    .line 782
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->n:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 783
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeCancel()I

    .line 785
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a:Ljava/lang/String;

    const-string v1, "::cancel: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "-"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return-void

    .line 783
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$12;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$12;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->UN_INITIALIZED:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;)V

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->v:I

    .line 202
    return-void
.end method

.method public getFrame(IIILjava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    .line 759
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$8;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$8;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;IIILjava/nio/ByteBuffer;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 766
    return-void
.end method

.method public getNextAudioFrame(Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;)Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;
    .locals 3

    .prologue
    const/16 v2, 0x1400

    .line 1189
    if-nez p1, :cond_0

    .line 1190
    new-instance p1, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;

    invoke-direct {p1}, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;-><init>()V

    .line 1191
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->buffer:Ljava/nio/ByteBuffer;

    .line 1192
    iput v2, p1, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->bufferSizeBytes:I

    .line 1195
    :cond_0
    invoke-virtual {p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeGetNextAudioFrame(Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;)I

    .line 1196
    return-object p1
.end method

.method public getTemplateDuration()J
    .locals 2

    .prologue
    .line 1273
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeGetTemplateDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTemplateSlotList()[Lcom/muvee/dsg/mmap/api/videoeditor/TemplateSlotDesc;
    .locals 1

    .prologue
    .line 1269
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeGetTemplateSlotList()[Lcom/muvee/dsg/mmap/api/videoeditor/TemplateSlotDesc;

    move-result-object v0

    return-object v0
.end method

.method public getTimelineDuration()J
    .locals 2

    .prologue
    .line 1277
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;-><init>()V

    .line 1278
    invoke-virtual {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeGetTimelineDuration(Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;)I

    .line 1279
    iget-wide v0, v0, Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;->duration:J

    return-wide v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$1;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$1;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;->INITIALIZED:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$State;)V

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->v:I

    .line 186
    return-void
.end method

.method public isNeedToInit()Z
    .locals 1

    .prologue
    .line 1284
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$17;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$17;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    move-result-object v0

    .line 1290
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method native nativeBuildTimeline(Lcom/muvee/dsg/mmap/api/videoeditor/TimelineType;)I
.end method

.method native nativeCancel()I
.end method

.method native nativeClose()I
.end method

.method native nativeGetFrame(IIILjava/nio/ByteBuffer;)I
.end method

.method native nativeGetNextAudioFrame(Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;)I
.end method

.method native nativeGetTemplateDuration()J
.end method

.method native nativeGetTemplateSlotList()[Lcom/muvee/dsg/mmap/api/videoeditor/TemplateSlotDesc;
.end method

.method native nativeGetTimelineDuration(Lcom/muvee/dsg/mmap/api/videoeditor/GetDurationParam;)I
.end method

.method native nativeInit()I
.end method

.method native nativeIsNeedToInit()Z
.end method

.method native nativePause()I
.end method

.method native nativePlay(IILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I
.end method

.method native nativeSave(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I
.end method

.method native nativeSeek(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I
.end method

.method native nativeSetAudioEffects([Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;)I
.end method

.method native nativeSetAudioOutProperties(ZZ)I
.end method

.method native nativeSetEffectSounds([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)I
.end method

.method native nativeSetMaxMuveeDuration(I)I
.end method

.method native nativeSetMedia([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)I
.end method

.method native nativeSetMusic([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;I)I
.end method

.method native nativeSetPreviewParam(Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)I
.end method

.method native nativeSetTemplate(Lcom/muvee/dsg/mmap/api/videoeditor/Template;)I
.end method

.method native nativeSetTheme(Lcom/muvee/dsg/mmap/api/videoeditor/Theme;)I
.end method

.method native nativeSetVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)I
.end method

.method native nativeSetVideoTransitions([Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;)I
.end method

.method native nativeUpdateMediaVolumes([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)I
.end method

.method native nativeUpdateMusicVolumes([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)I
.end method

.method native nativeUseBarAnalyzer(I)I
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativePause()I

    .line 773
    return-void
.end method

.method public play(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 1

    .prologue
    .line 531
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$3;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 543
    return-void
.end method

.method public declared-synchronized playWithAudio(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;)V
    .locals 4

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$1;)V

    .line 594
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;Z)Z

    .line 596
    if-eqz p4, :cond_0

    .line 597
    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$4;

    invoke-direct {v1, p0, v0, p4}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$4;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;)V

    .line 682
    const-string v2, "AUDIO_PLAY_THREAD"

    invoke-static {v2, v1}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->post(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 686
    :cond_0
    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$5;

    invoke-direct {v1, p0, p3}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$5;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 698
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$6;

    invoke-direct {v2, p0, v0, p2}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$6;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;Lcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;)V

    .line 726
    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$7;

    invoke-direct {v3, p0, p1, v2, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$7;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    invoke-direct {p0, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 737
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;Z)Z

    .line 738
    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 739
    :try_start_1
    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$b;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 740
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 741
    :try_start_2
    const-string v0, "AUDIO_PLAY_THREAD"

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/os/util/ThreadFactory;->quit(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 742
    monitor-exit p0

    return-void

    .line 740
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 593
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public save(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 4

    .prologue
    .line 819
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$10;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 828
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 829
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video Editor save failed with error code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 834
    :cond_0
    return-void
.end method

.method public saveEx(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 847
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a:Ljava/lang/String;

    const-string v1, "::saveEx: %s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "+"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->n:[Z

    monitor-enter v1

    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->n:[Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v0, v2

    .line 850
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$11;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1171
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1172
    sget-object v1, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a:Ljava/lang/String;

    const-string v2, "::saveEx: %s"

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "--"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video Editor save failed with error code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 850
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1177
    :cond_0
    sget-object v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a:Ljava/lang/String;

    const-string v1, "::saveEx: %s"

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "-"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    return-void
.end method

.method public seek(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 1

    .prologue
    .line 797
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$9;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 806
    return-void
.end method

.method public setAudioEffects([Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;)V
    .locals 1

    .prologue
    .line 489
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$25;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$25;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 497
    sget v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->o:I

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(I)V

    .line 498
    return-void
.end method

.method public setEffectSounds([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V
    .locals 1

    .prologue
    .line 470
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$24;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$24;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 478
    sget v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->p:I

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(I)V

    .line 479
    return-void
.end method

.method public setMaxMuveeDuration(I)V
    .locals 1

    .prologue
    .line 1213
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$14;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$14;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;I)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 1219
    return-void
.end method

.method public setMedia([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 252
    iput v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->w:I

    .line 253
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muvee/dsg/sdk/Engine;->getFaceDescriptorMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 254
    if-eqz p1, :cond_4

    move v0, v1

    .line 256
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 257
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/muvee/dsg/sdk/Engine;->getFaceDescriptorMap()Ljava/util/Map;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->mediaPath:Ljava/lang/String;

    aget-object v4, p1, v0

    iget-object v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->faceDesc:Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->faceDesc:Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;

    if-eqz v2, :cond_0

    .line 259
    aget-object v2, p1, v0

    iput-object v5, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->faceDesc:Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;

    .line 260
    aget-object v2, p1, v0

    new-instance v3, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;

    invoke-direct {v3}, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;-><init>()V

    iput-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->faceDesc:Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;

    .line 261
    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->faceDesc:Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;

    const/4 v3, 0x1

    iput v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;->isFaceFound:I

    .line 256
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    aget-object v2, p1, v0

    iput-object v5, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->faceDesc:Lcom/muvee/dsg/mmap/api/videoeditor/FaceDescriptor;

    goto :goto_1

    .line 268
    :cond_1
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 269
    invoke-virtual {p0, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V

    .line 273
    iget-object v3, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->w:I

    iget-object v4, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v4, v4, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    if-ge v3, v4, :cond_2

    .line 275
    iget-object v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;->edlInterval:Lcom/muvee/dsg/mmap/api/videoeditor/Interval;

    iget v2, v2, Lcom/muvee/dsg/mmap/api/videoeditor/Interval;->endTimeMSec:I

    iput v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->w:I

    .line 268
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 279
    :cond_3
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->getInstance()Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->register([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V

    .line 282
    :cond_4
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$19;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$19;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 290
    sget v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->q:I

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(I)V

    .line 291
    return-void
.end method

.method public setMusic([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V
    .locals 1

    .prologue
    .line 440
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$22;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$22;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 448
    sget v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->r:I

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(I)V

    .line 449
    return-void
.end method

.method public setMusic([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;Z)V
    .locals 1

    .prologue
    .line 452
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$23;

    invoke-direct {v0, p0, p1, p2}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$23;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;Z)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 460
    sget v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->r:I

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(I)V

    .line 461
    return-void
.end method

.method public setPreviewParam(Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)V
    .locals 1

    .prologue
    .line 507
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$2;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$2;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 514
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->getInstance()Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/MediaRegistry;->register(Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)V

    .line 515
    return-void
.end method

.method public setTemplate(Lcom/muvee/dsg/mmap/api/videoeditor/Template;)V
    .locals 0

    .prologue
    .line 1265
    invoke-virtual {p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSetTemplate(Lcom/muvee/dsg/mmap/api/videoeditor/Template;)I

    .line 1266
    return-void
.end method

.method public setTheme(Lcom/muvee/dsg/mmap/api/videoeditor/Theme;)V
    .locals 1

    .prologue
    .line 1256
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$16;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$16;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/Theme;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 1262
    return-void
.end method

.method public setVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V
    .locals 1

    .prologue
    .line 383
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$20;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$20;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 391
    sget v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->s:I

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(I)V

    .line 392
    return-void
.end method

.method public setVideoTransitions([Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;)V
    .locals 1

    .prologue
    .line 422
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$21;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$21;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 430
    sget v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->t:I

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(I)V

    .line 431
    return-void
.end method

.method public updateMediaVolumes([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V
    .locals 0

    .prologue
    .line 1301
    invoke-virtual {p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeUpdateMediaVolumes([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)I

    .line 1303
    return-void
.end method

.method public updateMusicVolumes([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V
    .locals 0

    .prologue
    .line 1312
    invoke-virtual {p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeUpdateMusicVolumes([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)I

    .line 1313
    return-void
.end method

.method public useBarAnalyzer(I)V
    .locals 1

    .prologue
    .line 1200
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$13;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$13;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;I)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor$a;)Ljava/lang/Object;

    .line 1206
    return-void
.end method
