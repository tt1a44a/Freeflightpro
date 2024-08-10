.class public Lcom/muvee/uhd2hd/Transcoder;
.super Ljava/lang/Object;
.source "Transcoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/uhd2hd/Transcoder$c;,
        Lcom/muvee/uhd2hd/Transcoder$b;,
        Lcom/muvee/uhd2hd/Transcoder$a;
    }
.end annotation


# instance fields
.field private a:Lcom/muvee/uhd2hd/ITranscoderListener;

.field private b:[Lcom/muvee/uhd2hd/EncoderMode;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/lang/Thread;

.field private i:Lcom/muvee/uhd2hd/Transcoder$c;

.field private j:D

.field private k:D

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/content/res/AssetFileDescriptor;

.field private final o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v4, p0, Lcom/muvee/uhd2hd/Transcoder;->a:Lcom/muvee/uhd2hd/ITranscoderListener;

    .line 36
    iput-object v4, p0, Lcom/muvee/uhd2hd/Transcoder;->b:[Lcom/muvee/uhd2hd/EncoderMode;

    .line 38
    iput-object v4, p0, Lcom/muvee/uhd2hd/Transcoder;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    iput-object v4, p0, Lcom/muvee/uhd2hd/Transcoder;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    iput-object v4, p0, Lcom/muvee/uhd2hd/Transcoder;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    iput-object v4, p0, Lcom/muvee/uhd2hd/Transcoder;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    iput-object v4, p0, Lcom/muvee/uhd2hd/Transcoder;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    iput-object v4, p0, Lcom/muvee/uhd2hd/Transcoder;->h:Ljava/lang/Thread;

    .line 45
    iput-object v4, p0, Lcom/muvee/uhd2hd/Transcoder;->i:Lcom/muvee/uhd2hd/Transcoder$c;

    .line 47
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    iput-wide v0, p0, Lcom/muvee/uhd2hd/Transcoder;->j:D

    .line 48
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-wide v2, p0, Lcom/muvee/uhd2hd/Transcoder;->j:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/muvee/uhd2hd/Transcoder;->k:D

    .line 54
    iput-object v4, p0, Lcom/muvee/uhd2hd/Transcoder;->l:Ljava/lang/String;

    .line 55
    iput-object v4, p0, Lcom/muvee/uhd2hd/Transcoder;->m:Ljava/lang/String;

    .line 260
    const-string/jumbo v0, "video/avc"

    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->o:Ljava/lang/String;

    .line 125
    const-string v0, "Transcoder"

    const-string/jumbo v1, "v4d IST 9:28AM 7th October 2015"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/muvee/uhd2hd/Transcoder;D)D
    .locals 1

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/muvee/uhd2hd/Transcoder;->j:D

    return-wide p1
.end method

.method static synthetic a(Lcom/muvee/uhd2hd/Transcoder;Lcom/muvee/dsg/mmap/api/audiosizeconvertor/OnProgressUpdateListener;)I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/muvee/uhd2hd/Transcoder;->nativeSetProgUpdateFn(Lcom/muvee/dsg/mmap/api/audiosizeconvertor/OnProgressUpdateListener;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/muvee/uhd2hd/Transcoder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/muvee/uhd2hd/Transcoder;->nativeJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a()Lcom/muvee/uhd2hd/Transcoder$b;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lcom/muvee/uhd2hd/Transcoder$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/muvee/uhd2hd/Transcoder$b;-><init>(Lcom/muvee/uhd2hd/Transcoder;Lcom/muvee/uhd2hd/Transcoder$1;)V

    .line 231
    const/16 v1, 0x780

    iput v1, v0, Lcom/muvee/uhd2hd/Transcoder$b;->a:I

    .line 232
    const/16 v1, 0x438

    iput v1, v0, Lcom/muvee/uhd2hd/Transcoder$b;->b:I

    .line 233
    const v1, 0xe4e1c0

    iput v1, v0, Lcom/muvee/uhd2hd/Transcoder$b;->c:I

    .line 234
    const/16 v1, 0x1e

    iput v1, v0, Lcom/muvee/uhd2hd/Transcoder$b;->d:I

    .line 235
    const/4 v1, 0x1

    iput v1, v0, Lcom/muvee/uhd2hd/Transcoder$b;->e:I

    .line 237
    return-object v0
.end method

.method static synthetic a(Lcom/muvee/uhd2hd/Transcoder;)Lcom/muvee/uhd2hd/Transcoder$b;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/muvee/uhd2hd/Transcoder;->a()Lcom/muvee/uhd2hd/Transcoder$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/muvee/uhd2hd/Transcoder;Lcom/muvee/uhd2hd/Transcoder$c;)Lcom/muvee/uhd2hd/Transcoder$c;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/muvee/uhd2hd/Transcoder;->i:Lcom/muvee/uhd2hd/Transcoder$c;

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/uhd2hd/Transcoder;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/muvee/uhd2hd/Transcoder;->h:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic a(Lcom/muvee/uhd2hd/Transcoder;[Lcom/muvee/uhd2hd/EncoderMode;)[Lcom/muvee/uhd2hd/EncoderMode;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/muvee/uhd2hd/Transcoder;->b:[Lcom/muvee/uhd2hd/EncoderMode;

    return-object p1
.end method

.method private b()Lcom/muvee/uhd2hd/Transcoder$b;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcom/muvee/uhd2hd/Transcoder$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/muvee/uhd2hd/Transcoder$b;-><init>(Lcom/muvee/uhd2hd/Transcoder;Lcom/muvee/uhd2hd/Transcoder$1;)V

    .line 242
    const/16 v1, 0x500

    iput v1, v0, Lcom/muvee/uhd2hd/Transcoder$b;->a:I

    .line 243
    const/16 v1, 0x2d0

    iput v1, v0, Lcom/muvee/uhd2hd/Transcoder$b;->b:I

    .line 244
    const v1, 0x7a1200

    iput v1, v0, Lcom/muvee/uhd2hd/Transcoder$b;->c:I

    .line 245
    const/16 v1, 0x1e

    iput v1, v0, Lcom/muvee/uhd2hd/Transcoder$b;->d:I

    .line 246
    const/4 v1, 0x1

    iput v1, v0, Lcom/muvee/uhd2hd/Transcoder$b;->e:I

    .line 248
    return-object v0
.end method

.method static synthetic b(Lcom/muvee/uhd2hd/Transcoder;)Lcom/muvee/uhd2hd/Transcoder$c;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->i:Lcom/muvee/uhd2hd/Transcoder$c;

    return-object v0
.end method

.method static synthetic c(Lcom/muvee/uhd2hd/Transcoder;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->h:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic d(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic e(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic g(Lcom/muvee/uhd2hd/Transcoder;)Lcom/muvee/uhd2hd/ITranscoderListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->a:Lcom/muvee/uhd2hd/ITranscoderListener;

    return-object v0
.end method

.method static synthetic h(Lcom/muvee/uhd2hd/Transcoder;)[Lcom/muvee/uhd2hd/EncoderMode;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->b:[Lcom/muvee/uhd2hd/EncoderMode;

    return-object v0
.end method

.method static synthetic i(Lcom/muvee/uhd2hd/Transcoder;)Lcom/muvee/uhd2hd/Transcoder$b;
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/muvee/uhd2hd/Transcoder;->b()Lcom/muvee/uhd2hd/Transcoder$b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic k(Lcom/muvee/uhd2hd/Transcoder;)Landroid/content/res/AssetFileDescriptor;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->n:Landroid/content/res/AssetFileDescriptor;

    return-object v0
.end method

.method static synthetic l(Lcom/muvee/uhd2hd/Transcoder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic m(Lcom/muvee/uhd2hd/Transcoder;)D
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/muvee/uhd2hd/Transcoder;->j:D

    return-wide v0
.end method

.method static synthetic n(Lcom/muvee/uhd2hd/Transcoder;)D
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/muvee/uhd2hd/Transcoder;->k:D

    return-wide v0
.end method

.method private native nativeCancel()I
.end method

.method private native nativeInit()I
.end method

.method private native nativeJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeSetProgUpdateFn(Lcom/muvee/dsg/mmap/api/audiosizeconvertor/OnProgressUpdateListener;)I
.end method

.method static synthetic o(Lcom/muvee/uhd2hd/Transcoder;)I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/muvee/uhd2hd/Transcoder;->nativeInit()I

    move-result v0

    return v0
.end method

.method static synthetic p(Lcom/muvee/uhd2hd/Transcoder;)I
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/muvee/uhd2hd/Transcoder;->nativeCancel()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getInFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getOutFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedModes()[Lcom/muvee/uhd2hd/EncoderMode;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->b:[Lcom/muvee/uhd2hd/EncoderMode;

    return-object v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare(Lcom/muvee/uhd2hd/ITranscoderListener;Landroid/content/res/AssetFileDescriptor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iput-object p1, p0, Lcom/muvee/uhd2hd/Transcoder;->a:Lcom/muvee/uhd2hd/ITranscoderListener;

    .line 130
    iput-object p2, p0, Lcom/muvee/uhd2hd/Transcoder;->n:Landroid/content/res/AssetFileDescriptor;

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/muvee/uhd2hd/Transcoder$a;

    invoke-direct {v1, p0}, Lcom/muvee/uhd2hd/Transcoder$a;-><init>(Lcom/muvee/uhd2hd/Transcoder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 139
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    invoke-direct {p0}, Lcom/muvee/uhd2hd/Transcoder;->nativeCancel()I

    .line 102
    return-void
.end method

.method public transcode(Ljava/lang/String;Ljava/lang/String;Lcom/muvee/uhd2hd/EncoderMode;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 60
    sget-object v1, Lcom/muvee/uhd2hd/EncoderMode;->UNSUPPORTED:Lcom/muvee/uhd2hd/EncoderMode;

    if-ne p3, v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/muvee/uhd2hd/Transcoder;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/muvee/uhd2hd/Transcoder;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v2, p0, Lcom/muvee/uhd2hd/Transcoder;->b:[Lcom/muvee/uhd2hd/EncoderMode;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 70
    if-ne v4, p3, :cond_3

    .line 74
    sget-object v1, Lcom/muvee/uhd2hd/EncoderMode;->NORMAL_1080P:Lcom/muvee/uhd2hd/EncoderMode;

    if-ne p3, v1, :cond_2

    .line 75
    invoke-direct {p0}, Lcom/muvee/uhd2hd/Transcoder;->a()Lcom/muvee/uhd2hd/Transcoder$b;

    move-result-object v4

    .line 82
    :goto_2
    iput-object p1, p0, Lcom/muvee/uhd2hd/Transcoder;->l:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/muvee/uhd2hd/Transcoder;->m:Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/muvee/uhd2hd/Transcoder$c;

    iget-object v5, p0, Lcom/muvee/uhd2hd/Transcoder;->a:Lcom/muvee/uhd2hd/ITranscoderListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/muvee/uhd2hd/Transcoder$c;-><init>(Lcom/muvee/uhd2hd/Transcoder;Ljava/lang/String;Ljava/lang/String;Lcom/muvee/uhd2hd/Transcoder$b;Lcom/muvee/uhd2hd/ITranscoderListener;)V

    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->i:Lcom/muvee/uhd2hd/Transcoder$c;

    .line 87
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/muvee/uhd2hd/Transcoder;->i:Lcom/muvee/uhd2hd/Transcoder$c;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->h:Ljava/lang/Thread;

    .line 88
    iget-object v0, p0, Lcom/muvee/uhd2hd/Transcoder;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :cond_2
    sget-object v1, Lcom/muvee/uhd2hd/EncoderMode;->NORMAL_720P:Lcom/muvee/uhd2hd/EncoderMode;

    if-ne p3, v1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/muvee/uhd2hd/Transcoder;->b()Lcom/muvee/uhd2hd/Transcoder$b;

    move-result-object v4

    goto :goto_2

    .line 69
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
