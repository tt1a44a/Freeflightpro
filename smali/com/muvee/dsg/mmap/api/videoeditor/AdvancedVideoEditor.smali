.class public Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;
.super Ljava/lang/Object;
.source "AdvancedVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;,
        Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$a;,
        Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;
    }
.end annotation


# static fields
.field public static final PROGRESS_STATE_POST_END:I = -0x68

.field public static final PROGRESS_STATE_POST_START:I = -0x66

.field public static final PROGRESS_STATE_PRE_END:I = -0x67

.field public static final PROGRESS_STATE_PRE_START:I = -0x65

.field private static a:I

.field private static b:I

.field private static g:I

.field private static h:I


# instance fields
.field private c:Z

.field private d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

.field private e:[Landroid/os/Handler;

.field private f:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

.field private i:F

.field private j:Ljava/lang/Object;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a:I

    .line 31
    const/16 v0, 0xc

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->b:I

    .line 586
    const/16 v0, 0x1400

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->g:I

    .line 587
    const/16 v0, 0x32

    sput v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->c:Z

    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Handler;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->e:[Landroid/os/Handler;

    .line 590
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->j:Ljava/lang/Object;

    .line 91
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;

    invoke-direct {v0, p0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;I)V

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$c;->start()V

    .line 92
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-direct {v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;-><init>(Z)V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;F)F
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->i:F

    return p1
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->g:I

    return v0
.end method

.method private a(IIILjava/nio/ByteBuffer;)I
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeGetFrame(IIILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private a(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativePlay(IILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;IIILjava/nio/ByteBuffer;)I
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(IIILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->b(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)I
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;)I
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a([Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)I
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)I
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)I
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;)I
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a([Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;)I

    move-result v0

    return v0
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;)I
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeGetNextAudioFrame(Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;)I

    move-result v0

    return v0
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)I
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSetPreviewParam(Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)I

    move-result v0

    return v0
.end method

.method private a(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0, p1, p2}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSave(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I

    move-result v0

    return v0
.end method

.method private a([Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;)I
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSetAudioEffects([Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;)I

    move-result v0

    return v0
.end method

.method private a([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)I
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSetVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)I

    move-result v0

    return v0
.end method

.method private a([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)I
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSetMedia([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)I

    move-result v0

    return v0
.end method

.method private a([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)I
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSetMusic([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;I)I

    move-result v0

    return v0
.end method

.method private a([Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;)I
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSetVideoTransitions([Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 99
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->e:[Landroid/os/Handler;

    const/4 v3, 0x0

    aget-object v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 101
    const-wide/16 v2, 0x2

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v2

    .line 103
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 107
    :cond_0
    :try_start_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 108
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->e:[Landroid/os/Handler;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    :try_start_4
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->e:[Landroid/os/Handler;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->e:[Landroid/os/Handler;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 118
    :goto_1
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 120
    :try_start_6
    invoke-virtual {p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;->b()Ljava/lang/Object;

    move-result-object v3

    .line 122
    instance-of v2, v3, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 123
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 125
    const-string v4, "com.muvee.dsg.mmap.api.videoeditor.AdvancedVideoEditor"

    const-string v5, "::invokeSynchronized: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v5, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a:I

    if-eq v4, v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v4, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->b:I

    if-eq v2, v4, :cond_1

    .line 131
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->c:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 137
    :cond_1
    monitor-exit p0

    return-object v3

    .line 114
    :catch_1
    move-exception v2

    .line 116
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 118
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method static synthetic a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)[Landroid/os/Handler;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->e:[Landroid/os/Handler;

    return-object v0
.end method

.method private b()I
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeInit()I

    move-result v0

    return v0
.end method

.method private b(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSeek(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)I
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->b()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)I
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->b([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)I

    move-result v0

    return v0
.end method

.method private b([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)I
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeSetEffectSounds([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)I

    move-result v0

    return v0
.end method

.method private c()I
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeClose()I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)I
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->c()I

    move-result v0

    return v0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativePause()I

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->f:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    return-object v0
.end method

.method private e()I
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v0}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->nativeCancel()I

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->j:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->k:Z

    return v0
.end method


# virtual methods
.method public attachSurface(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$13;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$13;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->e()I

    .line 500
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/sdk/Engine;->setSingleVideoMode(Z)V

    .line 163
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$11;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$11;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;)Ljava/lang/Object;

    .line 174
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$12;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$12;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;)Ljava/lang/Object;

    .line 183
    iput-boolean v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->c:Z

    .line 186
    return-void
.end method

.method public getFrame(IIILjava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    .line 534
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$4;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$4;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;IIILjava/nio/ByteBuffer;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;)Ljava/lang/Object;

    .line 541
    return-void
.end method

.method public getNextAudioFrame(Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;)Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;
    .locals 2

    .prologue
    const/16 v1, 0x1400

    .line 509
    if-nez p1, :cond_0

    .line 510
    new-instance p1, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;

    invoke-direct {p1}, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;-><init>()V

    .line 511
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p1, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->buffer:Ljava/nio/ByteBuffer;

    .line 512
    iput v1, p1, Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;->bufferSizeBytes:I

    .line 515
    :cond_0
    invoke-direct {p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/GetAudioParam;)I

    .line 516
    return-object p1
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 145
    invoke-static {}, Lcom/muvee/dsg/sdk/Engine;->getInstance()Lcom/muvee/dsg/sdk/Engine;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/muvee/dsg/sdk/Engine;->setSingleVideoMode(Z)V

    .line 146
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$1;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$1;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;)Ljava/lang/Object;

    .line 154
    iput-boolean v1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->c:Z

    .line 156
    return-void
.end method

.method public isInitilized()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->c:Z

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 491
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d()I

    .line 492
    return-void
.end method

.method public playWithAudio(ILcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 614
    if-eqz p2, :cond_0

    .line 615
    const/16 v0, -0x65

    invoke-interface {p2, v0, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 618
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->k:Z

    .line 620
    if-eqz p3, :cond_1

    .line 621
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$7;

    invoke-direct {v1, p0, p3}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$7;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/AudioOutCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 685
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 688
    :cond_1
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$8;

    invoke-direct {v0, p0, p2}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$8;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 700
    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$9;

    invoke-direct {v1, p0, p2}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$9;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 722
    new-instance v2, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$10;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$10;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    invoke-direct {p0, v2}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;)Ljava/lang/Object;

    .line 740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->k:Z

    .line 742
    if-eqz p2, :cond_2

    .line 743
    const/16 v0, -0x68

    invoke-interface {p2, v0, v3}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 745
    :cond_2
    return-void
.end method

.method public save(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 4

    .prologue
    .line 476
    invoke-static {}, Lcom/muvee/dsg/mmapcodec/MediaCodecTextureDecoderProxy;->clearCache()V

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/SaveParam;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a:I

    if-eq v1, v2, :cond_0

    .line 480
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

    .line 485
    :cond_0
    return-void
.end method

.method public seek(ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V
    .locals 2

    .prologue
    .line 553
    if-eqz p3, :cond_0

    .line 554
    const/16 v0, -0x65

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;->onProgressUpdate(IF)V

    .line 557
    :cond_0
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$5;

    invoke-direct {v0, p0, p3}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$5;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    .line 577
    new-instance v1, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$6;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$6;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;ILcom/muvee/dsg/mmap/api/videoeditor/PreviewSurface;Lcom/muvee/dsg/mmap/api/videoeditor/OnProgressUpdateListener;)V

    invoke-direct {p0, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;)Ljava/lang/Object;

    .line 584
    return-void
.end method

.method public setAudioEffects([Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;)V
    .locals 1

    .prologue
    .line 408
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$2;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$2;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/AudioEffectsDescriptor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;)Ljava/lang/Object;

    .line 415
    return-void
.end method

.method public setEffectSounds([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V
    .locals 1

    .prologue
    .line 391
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$18;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$18;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;)Ljava/lang/Object;

    .line 398
    return-void
.end method

.method public setMedia([Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V
    .locals 3

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 256
    aget-object v1, p1, v0

    .line 274
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->d:Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;

    invoke-virtual {v2, v1}, Lcom/muvee/dsg/mmap/api/videoeditor/VideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$14;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$14;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/MediaDescriptor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method public setMusic([Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V
    .locals 1

    .prologue
    .line 375
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$17;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$17;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/MusicDescriptor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;)Ljava/lang/Object;

    .line 382
    return-void
.end method

.method public setPreviewParam(Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;)V
    .locals 1

    .prologue
    .line 426
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->f:Lcom/muvee/dsg/mmap/api/videoeditor/PreviewParam;

    .line 427
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$3;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$3;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;)Ljava/lang/Object;

    .line 454
    return-void
.end method

.method public setVideoEffects([Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$15;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$15;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/EffectsDescriptor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;)Ljava/lang/Object;

    .line 329
    return-void
.end method

.method public setVideoTransitions([Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;)V
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$16;

    invoke-direct {v0, p0, p1}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$16;-><init>(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;[Lcom/muvee/dsg/mmap/api/videoeditor/TransitionsDescriptor;)V

    invoke-direct {p0, v0}, Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor;->a(Lcom/muvee/dsg/mmap/api/videoeditor/AdvancedVideoEditor$b;)Ljava/lang/Object;

    .line 366
    return-void
.end method
