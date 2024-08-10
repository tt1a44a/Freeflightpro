.class public Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;
.super Ljava/lang/Object;
.source "AudioWaveFormGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->a:Ljava/lang/String;

    return-void
.end method

.method private varargs declared-synchronized a(Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$1;->a:[I

    invoke-virtual {p1}, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 86
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 80
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->generate()[J

    move-result-object v0

    goto :goto_0

    .line 82
    :pswitch_1
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v1, 0x2

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x3

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->init(Ljava/lang/String;III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->unInit()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private native generate()[J
.end method

.method private native init(Ljava/lang/String;III)I
.end method

.method private native unInit()I
.end method


# virtual methods
.method public declared-synchronized invokeGenerate()[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->e:[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->e:[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    monitor-exit p0

    return-object v0

    .line 52
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->a:Ljava/lang/String;

    .line 53
    iget v3, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->b:I

    .line 54
    iget v4, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->c:I

    .line 55
    iget v5, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->d:I

    .line 58
    :cond_1
    sget-object v0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;->c:Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {p0, v0, v6}, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->a(Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    .line 59
    iget-object v6, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->b:I

    if-ne v3, v6, :cond_1

    iget v6, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->c:I

    if-ne v4, v6, :cond_1

    iget v6, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->d:I

    if-ne v5, v6, :cond_1

    .line 61
    if-nez v0, :cond_2

    .line 62
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_2
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;

    iput-object v2, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->e:[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;

    .line 65
    const-wide/16 v4, -0x1

    move v6, v1

    move v2, v1

    .line 67
    :goto_1
    array-length v1, v0

    if-ge v6, v1, :cond_3

    .line 68
    aget-wide v8, v0, v6

    cmp-long v1, v4, v8

    if-eqz v1, :cond_4

    .line 69
    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->e:[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;

    add-int/lit8 v1, v2, 0x1

    new-instance v4, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;

    aget-wide v8, v0, v6

    add-int/lit8 v5, v6, 0x1

    aget-wide v10, v0, v5

    invoke-direct {v4, v8, v9, v10, v11}, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;-><init>(JJ)V

    aput-object v4, v3, v2

    .line 70
    aget-wide v2, v0, v6

    .line 67
    :goto_2
    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    move v6, v4

    move-wide v4, v2

    move v2, v1

    goto :goto_1

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->e:[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;

    const/4 v1, 0x0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->e:[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;

    .line 74
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->e:[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v1, v2

    move-wide v2, v4

    goto :goto_2
.end method

.method public declared-synchronized invokeInit(Ljava/lang/String;III)I
    .locals 4

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->a:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->e:[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;

    .line 25
    :cond_0
    iget v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->b:I

    if-eq v0, p2, :cond_1

    .line 26
    iput p2, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->b:I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->e:[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;

    .line 29
    :cond_1
    iget v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->c:I

    if-eq v0, p3, :cond_2

    .line 30
    iput p3, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->c:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->e:[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;

    .line 33
    :cond_2
    iget v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->d:I

    if-eq v0, p4, :cond_3

    .line 34
    iput p4, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->d:I

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->e:[Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveAtom;

    .line 37
    :cond_3
    sget-object v0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;->a:Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->a(Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized invokeUniInit()I
    .locals 2

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;->b:Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator;->a(Lcom/muvee/dsg/mmap/api/audiowave/AudioWaveFormGenerator$a;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
