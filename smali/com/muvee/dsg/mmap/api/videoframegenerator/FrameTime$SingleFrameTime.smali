.class public Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;
.super Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;
.source "FrameTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleFrameTime"
.end annotation


# instance fields
.field private a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

.field private b:Z

.field private c:Z

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;-><init>()V

    .line 179
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    .line 181
    iput-boolean v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->b:Z

    .line 182
    iput-boolean v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->c:Z

    .line 188
    return-void
.end method

.method public constructor <init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-direct {p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;-><init>()V

    .line 179
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-direct {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;-><init>()V

    iput-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    .line 181
    iput-boolean v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->b:Z

    .line 182
    iput-boolean v1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->c:Z

    .line 194
    iput-object p1, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    .line 195
    return-void
.end method


# virtual methods
.method public createIterator(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;J)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Iterator;
    .locals 1

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->prepare(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;)V

    .line 283
    new-instance v0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime$1;

    invoke-direct {v0, p0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime$1;-><init>(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;)V

    return-object v0
.end method

.method public getInTimeMs()J
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->c:Z

    return v0
.end method

.method public next(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;)J
    .locals 10

    .prologue
    const-wide/16 v0, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 204
    iget-boolean v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->b:Z

    if-eqz v2, :cond_0

    .line 205
    iput-boolean v8, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->b:Z

    .line 209
    :goto_0
    invoke-virtual {p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    .line 211
    iget-object v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-static {v4}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 213
    sget-object v6, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$1;->a:[I

    iget-object v7, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-static {v7}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->b(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 246
    iput-boolean v8, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->c:Z

    move-wide v0, v2

    .line 247
    :goto_1
    return-wide v0

    .line 207
    :cond_0
    invoke-virtual {p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->advance()Z

    goto :goto_0

    .line 215
    :pswitch_0
    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 216
    iput-boolean v8, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->c:Z

    .line 217
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->d:J

    goto :goto_1

    .line 219
    :cond_1
    iput-boolean v9, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->c:Z

    .line 220
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->d:J

    goto :goto_1

    .line 224
    :pswitch_1
    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    .line 225
    iput-boolean v8, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->c:Z

    .line 227
    sub-long v0, v2, v4

    iget-wide v6, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->d:J

    sub-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    .line 228
    iget-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->d:J

    goto :goto_1

    :cond_2
    move-wide v0, v2

    .line 230
    goto :goto_1

    .line 233
    :cond_3
    iput-boolean v9, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->c:Z

    .line 234
    iput-wide v2, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->d:J

    goto :goto_1

    .line 238
    :pswitch_2
    cmp-long v4, v2, v4

    if-ltz v4, :cond_4

    .line 239
    iput-boolean v8, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->c:Z

    move-wide v0, v2

    .line 240
    goto :goto_1

    .line 242
    :cond_4
    iput-boolean v9, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->c:Z

    goto :goto_1

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public prepare(Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 255
    iget-object v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-static {v0}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->a(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 257
    sget-object v2, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$1;->a:[I

    iget-object v3, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->a:Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;

    invoke-static {v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;->b(Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time;)Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$Time$Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 265
    invoke-virtual {p1, v0, v1, v7}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V

    .line 268
    :goto_0
    invoke-virtual {p1}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->d:J

    .line 269
    invoke-static {}, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::prepare: lastFrameTimeStamp=%d"

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iput-boolean v6, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->b:Z

    .line 271
    iput-boolean v6, p0, Lcom/muvee/dsg/mmap/api/videoframegenerator/FrameTime$SingleFrameTime;->c:Z

    .line 272
    return-void

    .line 259
    :pswitch_0
    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V

    goto :goto_0

    .line 262
    :pswitch_1
    invoke-virtual {p1, v0, v1, v6}, Lcom/muvee/dsg/mmap/api/videoframegenerator/MediaExtractor;->seekTo(JI)V

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
